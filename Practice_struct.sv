module student_rec;

  typedef struct {
    int    id;
    int    marks;
    string name;
    byte   grade;
  } student;

  student S1, S2;

  initial begin
    S1 = '{3, 52, "parth", "A"};
    S2 = '{4, 43, "sagar", "B"};

    $display("Record of parth = %p", S1);
    $display("Record of sagar = %p", S2);

    //change the grade marks of person
    S1.id    = 6;
    S1.marks = 67;
    S1.grade = "D";

    $display("Record of parth = %p", S1);
  end

endmodule