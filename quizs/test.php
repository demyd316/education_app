<?php 
	
	$data = [
		
		"quiz"=>[
			
			"quiz-1"=>[
				
				"question-1"=>[
				
				"type"=>"fillin",
				"question"=>"blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah",
				"answer"=>"blah"
			
				],
				"question-2"=>[
					
					"type"=>"mcqs",
					"question"=>"blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah",
					"option1"=>"option1",
					"option2"=>"option2",
					"option3"=>"option3",
					"option4"=>"option4",
					"answer"=>"option4"
				
				]
			
			]
		
		]
	
	
	];

	echo "<pre>";
	echo json_encode($data,JSON_PRETTY_PRINT);

?>