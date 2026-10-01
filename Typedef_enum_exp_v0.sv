module tb_enum;
  
  typedef enum {parth, deep, mrunali, harsh} persons;
  
  initial begin
    persons person;
    
    person = deep;
    
    $display("Current person  - %s", person.name());
    $display("First person    - %s", person.first().name());
    $display("Last person     - %s", person.last().name());
    $display("Next person     - %s", person.next().name());
    $display("Previous person - %s", person.prev().name());
    
  end
endmodule

