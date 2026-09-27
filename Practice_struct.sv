module student_rec;

  typedef struct {
    int    id;
    int    marks;
    string name;
    byte   grade;
  } student_t;

  student S1, S2;

  initial begin
    S1 = '{3, 52, "parth", "A"};
    S2 = '{4, 43, "sagar", "B"};

    $display("Record of parth = %p", S1);
    $display("Record of sagar = %p", S2);
  end

endmodule