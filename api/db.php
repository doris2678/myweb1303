<?php
session_start();
date_default_timezone_set('Asia/Taipei');

$levelStr=[
    1=>"普遍級", 
    2=>"輔導級",
    3=>"保護級",
    4=>"限制級"
];

$sessStr=[
  0=>"14:00~16:00",
  1=>"16:00~18:00",
  2=>"18:00~20:00",
  3=>"20:00~22:00",
  4=>"22:00~24:00" 
];

function dd($array){
    echo "<pre>";
    print_r($array);
    echo "</pre>";
}

function q($sql){
  //  $dsn="mysql:host=localhost;dbname=db03;charset=utf8";
  //  $pdo=new PDO($dsn,'root','');
   $dsn="mysql:host=localhost;dbname=s1140213;charset=utf8";
   $pdo=new PDO($dsn,'s1140213','s1140213');

   return $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
}

function to($url){
  header("locaton:".$url);
}


//***DB begin*** 
class DB{
  //  private $dsn="mysql:host=localhost;dbname=db03;charset=utf8";   
   private $dsn="mysql:host=localhost;dbname=s1140213;charset=utf8";   
   private $pdo;
   private $table;

   function __construct($table){
     $this->table=$table;
    //  $this->pdo=new PDO($this->dsn,'root','');    
     $this->pdo=new PDO($this->dsn,'s1140213','s1140213');    
   }

   function arraytosql($array){
     //key=value
     $tmp=[];
     foreach ($array as $key => $value) {
        $tmp[]="`$key`='$value'";
     } 
     return $tmp;
   }

   function find($id){
    //select * from $this->table where id=xxx and ....
    $sql="select * from $this->table where ";
    if(is_array($id)){                
        $tmp=$this->arraytosql($id);
        $sql.=join(" and ",$tmp);     
    }else{
        $sql.=" id='$id'";
    }
    return $this->pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
   } 

 function del($id){
    //delete from $this->table where id=xxx and ....
    $sql="delete from $this->table where ";
    if(is_array($id)){                
        $tmp=$this->arraytosql($id);
        $sql.=join(" and ",$tmp);     
    }else{
        $sql.=" id='$id'";
    }
    return $this->pdo->exec($sql);
   } 

   function all(...$arg){
    //select * from $this->table where id=xxx and ....
    $sql="select * from $this->table ";
    if(isset($arg[0])){
        if(is_array($arg[0])){                
                $tmp=$this->arraytosql($arg[0]);
                $sql.=" where ".join("  and ",$tmp);     
            }else{
                $sql.=$arg[0];
            }
    }
    if(isset($arg[1])){
      $sql.=$arg[1];
   }
  //echo $sql; 
   return $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
  }

  function count(...$arg){
    //select * from $this->table where id=xxx and ....
    $sql="select count(*) from $this->table ";
    if(isset($arg[0])){
        if(is_array($arg[0])){                
                $tmp=$this->arraytosql($arg[0]);
                $sql.=" where ".join("  and ",$tmp);     
            }else{
                $sql.=$arg[0];
            }
    }
    if(isset($arg[1])){
      $sql.=$arg[1];
   } 
   //echo $sql;
   return $this->pdo->query($sql)->fetchColumn();
  }

  function sum($col,...$arg){
    //select * from $this->table where id=xxx and ....
    $sql="select sum($col) from $this->table ";
    if(isset($arg[0])){
        if(is_array($arg[0])){                
                $tmp=$this->arraytosql($arg[0]);
                $sql.=" where ".join("  and ",$tmp);     
            }else{
                $sql.=$arg[0];
            }
    }
    if(isset($arg[1])){
      $sql.=$arg[1];
   } 
   //echo $sql;
   return $this->pdo->query($sql)->fetchColumn();
  }

  function max($col,...$arg){
    //select * from $this->table where id=xxx and ....
    $sql="select max($col) from $this->table ";
    if(isset($arg[0])){
        if(is_array($arg[0])){                
                $tmp=$this->arraytosql($arg[0]);
                $sql.=" where ".join("  and ",$tmp);     
            }else{
                $sql.=$arg[0];
            }
    }
    if(isset($arg[1])){
      $sql.=$arg[1];
   } 
   //echo $sql;
   return $this->pdo->query($sql)->fetchColumn();
  }


   function save($array){
    //update $this->table set name=xxx,sh=xxx where id=xxx 
    if(isset($array['id'])){
      $sql="update $this->table set ";
      $tmp=$this->arraytosql($array);
      $sql.=join(" , ",$tmp)." where id='{$array['id']}'";  
     }else{        
     //insert into $this->table(key,...) values(values....)
       $cols=join("`,`",array_keys($array));
       $values=join("','",$array);
       $sql="insert into $this->table(`$cols`) values('$values')";
     }
     //echo $sql;
     return $this->pdo->exec($sql);
   } 

}
//***DB end*** 

$Poster=new DB('web03_poster');
$Movie=new DB('web03_movies');
$Order=new DB('web03_orders');

// $Poster=new DB('poster');
// $Movie=new DB('movies');
// $Order=new DB('orders');


?>
