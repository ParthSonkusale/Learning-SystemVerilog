module tb;
  struct{int a;
         int b;}p1,p2;
  
  initial begin
    p1 = '{a : 2, b : 5};
    
    $display("P1 is %p",p1);
    $display("P2 is %p",p2);
    //the value of p1.a is at another memory location
    // value of p2.a in at another 
    // to access p2.a we want to assign it a value else it appears 0 always
    
  end
endmodule