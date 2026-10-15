module example;

reg arr[3];
int i;
  
initial begin

//index for assignment  
arr[0] = 1'b0;
arr[1] = 1'b1;
arr[2] = 1'b0;
  
// for loop to display serial
  for(i = 0;i < 3;i++)
    $display("Value fo array arr[%0d] = %0d",i,arr[i]);
  
end

endmodule