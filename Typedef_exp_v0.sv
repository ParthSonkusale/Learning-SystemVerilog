module tb;
  
  typedef struct{ int street_no;
                  string city;}
  address;
          
  
  typedef struct{int id;
                 string name;
                 address addr;} // addr access address typedef into 
  person_info;
  
  person_info p; // p can access person_info data...... like typedef int n;
                 //                                                  n p = 10;
  
  initial begin
    p.id = 10;
    p.name = "arix";
    p.addr.street_no = 7;
    p.addr.city = "Nagpur";
    
    $display("#-----Personal Detail-----#");
    $display("Id : %d",p.id);
    $display("Name : %s",p.name);
    $display("Street no : %d",p.addr.street_no);
    $display("City : %s",p.addr.city);
    
  end
endmodule
                 