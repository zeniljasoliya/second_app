import 'package:flutter/material.dart';

List<Map<String, dynamic>> griddata = [
  {
    'color': Colors.blue.shade500,
  },
  {
    'color': Colors.red,
  },
  {
    'color': Colors.amber,
  },
  {
    'color': Colors.black,
  },
  {
    'color': Colors.green,
  },
  {
    'color': Colors.deepOrange,
  },
  {
    'color': Colors.pink,
  },
  {
    'color': Colors.purple,
  },
  {
    'color': Colors.cyan,
  }
];

List<Map<String, dynamic>> stepperdata = [
  {
    'title': 'order signed',
    'content': 'Siucessfully Signed',
    'state': StepState.complete,
    'subtitle': 'sucess',
  },
  {
    'title': 'order Processed',
    'content': 'Siucessfully order process',
    'state': StepState.complete,
    'subtitle': 'sucess',
  },
  {
    'title': 'shipped',
    'content': 'Siucessfully Shipped',
    'state': StepState.complete,
    'subtitle': 'Mumbai',
  },
  {
    'title': 'out for delivery',
    'content': 'Siucessfully delivery',
    'state': StepState.editing,
    'subtitle': 'surat',
  },
  {
    'title': 'Delivered',
    'content': 'Siucessfully deliver',
    'state': StepState.error,
    'subtitle': 'not done',
  },
];

List<Map<String, dynamic>> questions1 = [
  {
    'question': '1 .  How many players in team?',
    'options': [
      '11',
      '12',
      '15',
      ' 9',
    ],
    'answerIndex': 0,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '2 .  Who won the Deodhar Trophy Cricket played in Mumbai on March 9, 2010 ?',
    'options': [
      'North Zone',
      'West Zone',
      'East Zone',
      'South Zone',
    ],
    'answerIndex': 0,
    'selectedAnswerIndex': -1,
  },
  {
    'question': '3 .  Which country host 2011–Cricket World Cup ?',
    'options': [
      'Australia',
      'India',
      'New Zealand',
      'Australia & New Zealand',
    ],
    'answerIndex': 1,
    'selectedAnswerIndex': -1,
  },
  {
    'question': '4 .  Pakistan won World Cup in ?',
    'options': [
      '1999',
      '2002',
      '1992',
      '2007',
    ],
    'answerIndex': 2,
  },
  {
    'question': '5 .  How many players in the ground in cricket at 1 time',
    'options': [
      '11',
      '10',
      '12',
      '13',
    ],
    'answerIndex': 3,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '6 .  Combined width of the three stumps, including small gaps between them is ______.',
    'options': [
      '9 inches',
      '9.5 inches',
      '10 inches',
      '8 inches',
    ],
    'answerIndex': 0,
    'selectedAnswerIndex': -1,
  },
  {
    'question': '7 .  What is color of ball used in limited over match ?',
    'options': [
      'Grren',
      'white',
      'Red',
      'Pink',
    ],
    'answerIndex': 1,
    'selectedAnswerIndex': -1,
  },
  {
    'question': '8 .  Pakistan contribution to advancing the cricket is',
    'options': [
      'No ball',
      'Run-out',
      'Reverse swing',
      'Leg before wicket',
    ],
    'answerIndex': 2,
    'selectedAnswerIndex': -1,
  },
  {
    'question': '9 .  Test Cricket celebrated 100 years in the year',
    'options': [
      '1877',
      '1977',
      '1875',
      '1990',
    ],
    'answerIndex': 1,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '10 .  Who among the following introduced the world to One-Day Internationals?',
    'options': [
      'Len Hutton',
      'Frank Worrell',
      'Thomas Hughes',
      'Kerry Packer',
    ],
    'answerIndex': 3,
    'selectedAnswerIndex': -1,
  },
];

List<Map<String, dynamic>> questions = [
  {
    'question':
        '1. When near a pedestrian crossing, as the pedestrians are waiting to cross the road, what should you do?',
    'options': [
      'Sound horn and proceed',
      'Slow down, sound horn and pass',
      'Stop the vehicle and wait till the pedestrians cross the road and then proceed',
    ],
    'answerIndex': 2,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '2. A person driving a vehicle in a public place without a licence, is liable for:',
    'options': [
      'Penalty only',
      'Penalty for the driver and the owner and/ or seizure of vehicle',
      'A warning',
    ],
    'answerIndex': 1,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '3. While parking your vehicle on a downward gradient, in addition to the application of hand brake, the gear engaged should be:',
    'options': [
      'In neutral',
      'In first',
      'In reverse',
    ],
    'answerIndex': 2,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '4. On a road designated as one way, which of the following holds true?',
    'options': [
      'Parking is prohibited',
      'Overtaking is prohibited',
      'Should not drive in reverse gear',
    ],
    'answerIndex': 2,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '5. When a blind person is crossing the road holding a white cane, the driver should:',
    'options': [
      'Consider the white cane as a traffic sign to stop the vehicle',
      'Blow the horn and proceed',
      'Slow down and proceed with caution',
    ],
    'answerIndex': 0,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '6. What happens if you are carrying overload in goods carriages?',
    'options': [
      'It is not a punishable offence',
      'Only attracts a fine',
      'Driving licence can be suspended or cancelled',
    ],
    'answerIndex': 2,
    'selectedAnswerIndex': -1,
  },
  {
    'question': '7. When is overtaking is prohibited?',
    'options': [
      'When the road is marked with a broken center line in the colour white',
      'When the vehicle is being driven on a steep hill',
      'When the road is marked with a continuous center line in the colour yellow',
    ],
    'answerIndex': 1,
    'selectedAnswerIndex': -1,
  },
  {
    'question': '8. If the road is marked with broken white lines, you:',
    'options': [
      'shall not change track',
      'can change track, if required',
      'shall stop the vehicle',
    ],
    'answerIndex': 1,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '9. Where is the number of passengers permitted to be taken in a private vehicle recorded?',
    'options': [
      'Registration Certificate',
      'Tax Token',
      'Permit',
    ],
    'answerIndex': 0,
    'selectedAnswerIndex': -1,
  },
  {
    'question':
        '10. Maximum permitted speed of a motor car on national highway is:',
    'options': [
      '60 km/hr',
      '80 km/hr',
      '70 km/hr',
    ],
    'answerIndex': 2,
    'selectedAnswerIndex': -1,
  },
];

List<String> imagedata1 = [
  'assets/images/zenil.jpeg',
  'assets/images/gabani.jpeg',
  'assets/images/parth.jpeg',
  'assets/images/rushiraj.jpeg',
  'assets/images/bhargav.jpeg',
  'assets/images/yash.jpeg',
  'assets/images/jash.jpeg',
  'assets/images/dhruv.jpeg'
];

List<String> imagedata2 = [
  'assets/images/zenil.jpeg',
  'assets/images/parth.jpeg',
  'assets/images/dhruv.jpeg'
];

List<String> imagedata3 = [
  'assets/images/zenil.jpeg',
  'assets/images/gabani.jpeg',
  'assets/images/parth.jpeg',
  'assets/images/dhruv.jpeg'
];

List<Map<String, dynamic>> hobbies = [
  {
    'title': 'Reading',
    'isSelected': false,
  },
  {
    'title': 'Painting',
    'isSelected': false,
  },
  {
    'title': 'Watching',
    'isSelected': false,
  },
  {
    'title': 'Playing',
    'isSelected': false,
  },
  {
    'title': 'Cooking',
    'isSelected': false,
  },
  {
    'title': 'Dancing',
    'isSelected': false,
  },
];
