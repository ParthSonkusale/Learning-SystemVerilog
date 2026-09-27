module example;

struct{int id; string name;}person;

initial begin
//    person.id   = 37;
//    person.name = "parth"; 
person = {37 , "parth"};

    $display("id is %d",person.id);
    $display("name is %s",person.name);
    $display("It display structure = %p",person);
end

endmodule