<?php 

class Anasayfa extends Config{
        
        
        function getSlider($param,$query){
                $sl=$this->db()->prepare($query);
                $sl->execute($param);
                
                $res=$sl->fetchAll();
                
                return $res;
            
        }
    
}

?>