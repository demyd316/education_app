import face_recognition
import re
import os
from datetime import datetime
import json
import urllib.request
import sys, getopt
from flask import Flask, render_template, flash, redirect, url_for,request
from flask import make_response
from werkzeug.utils import secure_filename
import requests

#from werkzeug import secure_filename
app = Flask(__name__, template_folder='template')
app.secret_key = "AlpEye"
def  face_rec(temp_file,fis):
   image = face_recognition.load_image_file(fis)
   locations = face_recognition.face_locations(image)
   print(fis)
   if locations:
      known_imageRec = face_recognition.load_image_file(fis)
      test_imageRec = face_recognition.load_image_file(temp_file)

      known_encoding = face_recognition.face_encodings(known_imageRec)[0]
      test_encoding = face_recognition.face_encodings(test_imageRec)[0]
      #print(fis)
      results = face_recognition.compare_faces([known_encoding], test_encoding,tolerance=0.5)
      #print("hello")

      if(results[0] == True):

         # Find all facial features in all the faces in the image
         m = re.findall(r"\d+", str(locations[0]))

         for face_landmarks in locations:
            x0 = int(m[1])
            y0 = int(m[0])
            x1 = int(m[3])
            y1 = int(m[2])
            arrList = [x0, y0, x1, y1]
            arrList = str(arrList)
         if( len(locations) == 1 ):
            #return ('{"faces": ' + str(len(locations)) + ', "match": true, "coordinates": ' + arrList + '}')
            return True
         else:
            return True

      else:
         #return ('{"faces": ' + str(len(locations)) + ', "match": false }')
         return False
   else:
      #return ('{"faces": 0, "matches": 0}')
      return False

UPLOAD_FOLDER = 'temp/uploads'
ALLOWED_EXTENSIONS = {'txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif'}
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@app.route('/uploader', methods=['POST'])
def uploads_file():
   #return request.files['file'].filename
   if 'file' not in request.files:
      flash('No file part')
      return '{"success":false,"error":"No file part"}'
   file = request.files['file']
   # if user does not select file, browser also
   # submit an empty part without filename


   if file.filename == '':
      flash('No selected file')
      return '{"success":false,"error":"No selected file"}'
   if file and allowed_file(file.filename):
      filename = secure_filename(file.filename)
      file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
      if(os.stat(app.config['UPLOAD_FOLDER']+"/"+filename).st_size > 1024*1024*150):
         os.remove(app.config['UPLOAD_FOLDER']+"/"+filename)
         return '{"success":false,"error":"File too Large"}'

      jsonstr = request.form["friends"]

      obj = json.loads(jsonstr)

      for items in obj["data"]:
         try:
            response = requests.get(items["image_url"], headers={"User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:15.0) Gecko/20100101 Firefox/15.0.1"})
            print(items["name"])
            #print('\n')
            #print(response.status_code)
            if response.status_code == 200:
               with open("temp/test1.jpg", 'wb') as f:
                  f.write(response.content)
                  str = face_rec(app.config['UPLOAD_FOLDER']+"/"+filename,"temp/test1.jpg")
                  if(str):

                     array = {"success" : True,"person_name":items["name"]}
                     return json.dumps(array)
                  #return ('{\'success\':true,\'person_name\':\'{0}\'}').format(os.path.splitext(image)[0])
         except:
            print("something happened")
      return json.dumps({"success":False,"person_name":"unknown"})






      #return redirect(url_for(request.url,filename=str))
      #return redirect(request.url)



#face_rec()
@app.route('/check-face', methods=['POST'])
def main():

    #file = request.files['file']
    try:
        response = requests.get(items["image_url"], headers={"User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:15.0) Gecko/20100101 Firefox/15.0.1"})
        print(items["name"])
        #print('\n')
        #print(response.status_code)
        if response.status_code == 200:
            with open("temp/test1.jpg", 'wb') as f:
            f.write(response.content)
            str = face_rec(app.config['UPLOAD_FOLDER']+"/"+filename,"temp/test1.jpg")
            if(str):

                array = {"success" : True,"person_name":items["name"]}
                return json.dumps(array)
        #return ('{\'success\':true,\'person_name\':\'{0}\'}').format(os.path.splitext(image)[0])
    except:
        print("something happened")
    known_imageRec = face_recognition.load_image_file(file)
    test_encoding = face_recognition.face_encodings(known_imageRec)[0]
    #array = {test_encoding}
    print(json.dumps(test_encoding.tolist()))
    return json.dumps(test_encoding.tolist())

@app.route("/")
def index():
   message = None
   #return "<a href='/check-face'>Click</a>"
   return render_template('index.html', message='')

"""
if __name__ == "__main__":
   main(sys.argv[1:]) """

if __name__ == '__main__':
    app.debug = True
    app.run(host='0.0.0.0' , port=1000)
