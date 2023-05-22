main() {
  String studentName = "Amit Hasan";
  int testScore = 75;
  String grade = studentGrade(testScore, studentName);
  print(grade);
}
 studentGrade(testScore, studentName){
   if(testScore >= 90 &&  testScore <= 100 ){
     return("$studentName's grade: A");
   } else if(testScore >= 80 &&  testScore <= 89 ){
     return("$studentName's grade: B");
   } else if(testScore >= 70 &&  testScore <= 79 ){
     return("$studentName's grade: C");
   } else if (testScore >= 60 &&  testScore <= 69 ) {
     return("$studentName's grade: D");
   } else if (testScore >= 0 &&  testScore <= 59 ) {
     return("$studentName's grade: F");
   }
   else {
     return("Invalid Grade");

   }
}

