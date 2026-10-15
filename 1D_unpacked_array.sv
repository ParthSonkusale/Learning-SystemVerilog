module example;

//1D Unpacked array
reg arr[4];

initial begin
    //using index method
    arr[0] = 1'b0;
    arr[1] = 1'b1;
    arr[2] = 1'b0;
    arr[3] = 1'b1;
	 
	 $display("Value of array = %p", arr);

end

endmodule
