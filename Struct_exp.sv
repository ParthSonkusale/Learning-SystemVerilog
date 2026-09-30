module example;
  
  struct{int a; int b; struct{int m; int n;}p2;}p1;
  
  initial begin
    p1.a = 7;
    p1.p2.n = 90;
    
    $display("The value of a is %d",p1.a);
    $display("The value of n is %d",p1.p2.n);
    
  end
  
endmodule