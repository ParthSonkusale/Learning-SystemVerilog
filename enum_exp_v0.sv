module tb_enum;
  
  typedef enum {parth, deep, mrunali, harsh} persons;
  typedef enum bit [1:0] {parth, deep, mrunali, harsh , arix} persons; //it allows only 4 elements in enum because of bit [1:0] 
                                                                       //but we have 5 elements in enum so it will give error.
  
  initial begin
    persons person;
    
    person = deep;
    
    $display("Current person  - %s", person.name());
    $display("First person    - %s", person.first().name());
    $display("Last person     - %s", person.last().name());
    $display("Next person     - %s", person.next().name());
    $display("Previous person - %s", person.prev().name());
    $display("Total element   - %0d", person.num());
    
  end
endmodule

