<?php




class Users extends Config
{

    function has_session()
    {
        if (empty($_SESSION['users'])) {
            $session = $this->createSession();
            $_SESSION['users'] = $session;
            $_SESSION['is_users']=0;
        } else {
        }
        return $_SESSION['users'];
    }
    
    
    function set_session($id){
        $_SESSION['users']=$id;
        $_SESSION['is_users']=1;
        return $_SESSION['users'];
    }
    function returnSession(){
        return $_SESSION['users'];
    }

    function createSession()
    {
        $token = md5(uniqid(mt_rand(), true));
        return $token;
    }
    
    function setting_user($param,$query){
        $sql=$this->db()->prepare($query);
        $sql->execute($param);
        
        $res=$sql->fetchAll();
        
        return $res;
    }
}