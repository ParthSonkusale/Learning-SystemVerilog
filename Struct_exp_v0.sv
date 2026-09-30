module Person_info(
  input struct{ int id;
                string name;
               struct{ int street_no;
                      string city;}
               addr;}
  in_person,
  
  output struct{ int id;
                 string name;
                struct{int street_no;
                       string city;}
                addr;}
  out_person
);
  
  always_comb begin
    out_person.id = in_person.id;
    out_person.addr.city = in_person.addr.city;
    out_person.name = in_person.name;
    out_person.addr.street_no = in_person.addr.street_no + 2;
  end
  
endmodule
                
                module tb;
  
  struct{int id;
         string name;
         struct{int street_no;
                string city;}
         addr;}
  in_person, out_person;
  
  Person_info ddu(.in_person(in_person) , .out_person(out_person);
  
  initial begin
    in_person.id = 20;
    in_person.addr.city = "arth";
    in_person.name = "Parth";
    
    #10
    $display("-----Input Person-----");
    $display("ID - %d", in_person.id);
    $display("ID - %s", in_person.addr.city);
    $display("ID - %s", in_person.name);
    
    $display("-----output Person-----");
    $display("ID - %d", out_person.id);
    $display("ID - %s", out_person.addr.city);
    $display("ID - %s", out_person.name);
    
    $finish;
    
  end
endmodule

  
  