class Schedule {
  final String courseId;
  final String courseName;
  final Map<String, int> courseAttendance ;
  final Map<String, int> courseQuiz;
  final int courseQuizMax;
  final Map<String, int> project ;
  final int projectMax;
  final int courseDrop;
  final int midterm;
  final int finall;


  Schedule({this.courseId, this.courseName, this.courseAttendance,this.courseQuiz,this.courseQuizMax,this.project, this.projectMax
,this.courseDrop, this.midterm, this.finall
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(

     courseId: json['courseId'];
     courseName: json['courseName'];
     courseAttendance : json['courseAttendance'];
     courseQuiz : json['courseQuiz'];
     courseQuizMax : json['courseQuizMax'];
     project : json['project'];
     projectMax : json['projectMax'];
     courseDrop : json['courseDrop'];
    midterm : json['midterm'];
    finall : json['finall'];

    );
  }
}