<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>
            .btn{
                display: inline-block;
                background: #EA8025;
                color:  #fff;
                padding: 10px 50px;
                margin:  30px 0;
                border-radius: 30px;
                transition: background 0.5s;
            }
            .btn:hover{
                background: #563434;
            }
            a{
                color: #fff;
                font-size: 16px;
                font-weight: 700;
                font-family: 'BebasNeue','Lato', "Times New Roman", serif;
            }
            .box-content{
                margin: 0 auto;
                width: 800px;
                border: 1px solid #ccc;
                text-align: center;
                padding: 20px;
            }
            #user_login form{
                width: 200px;
                margin: 40px auto;
            }
            #user_login form input{
                margin: 5px 0;
            }
        </style>
    </head>

    <body>
        <?php
        session_start();
        include 'config.php';
        $error = false;
        if (isset($_POST['username']) && !empty($_POST['username']) && isset($_POST['password']) && !empty($_POST['password'])) {
            $result = mysqli_query($conn, "Select `id`,`username`,`email`,`password` from `user` WHERE (`username` ='" . $_POST['username'] . "' AND `password` = md5('" . $_POST['password'] . "'))");
            if (!$result) {
                $error = mysqli_error($conn);
            } else {
                $user = mysqli_fetch_assoc($result);
                $_SESSION['current_user'] = $user;
            }
            mysqli_close($conn);
            if ($error !== false || $result->num_rows == 0) {
                ?>
                <div id="login-notify" class="box-content">
                    <h1>Th??ng b??o</h1>
                    <h4><?= !empty($error) ? $error : "Th??ng tin ????ng nh???p kh??ng ch??nh x??c" ?></h4>
                    <a href="./index.php">Quay l???i</a>
                </div>
                <?php
                exit;
            }
            ?>
        <?php } ?>
        <?php if (empty($_SESSION['current_user'])) { ?>
            <div id="user_login" class="box-content">
                <h1>????ng nh???p t??i kho???n</h1>
                <form action="./index.php" method="Post" autocomplete="off">
                    <label>Username</label></br>
                    <input type="text" name="username" value="" /><br/>
                    <label>Password</label></br>
                    <input type="password" name="password" value="" /></br>
                    <br>
                    <input type="submit" value="????ng nh???p" />
                </form>
            </div>
            <?php
        } else {
            $currentUser = $_SESSION['current_user'];
            ?>
            <div id="login-notify" class="box-content">
                <h1>TRANG QU???N TR???</h1>
                <!-- <h1>Xin ch??o, <?= $currentUser['username'] ?></h1><br/><br> -->
                <button class="btn"><a href="./admin.php" style="text-decoration:none">QU???N L?? S???N PH???M</a></button><br> 
                <button class="btn"><a href="quanlidonhang.php" style="text-decoration:none">QU???N L?? ????N H??NG</a><br></button><br>
                <button class="btn"><a href="./edit.php" style="text-decoration:none">&nbsp;&nbsp;&nbsp;&nbsp;?????I M???T KH???U&nbsp;&nbsp;&nbsp;&nbsp;</a></button><br>
                <button class="btn"> <a href="./logout.php" style="text-decoration:none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;????NG XU???T&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></button>
                
                
                
               
                
            </div>
        <?php } ?>
    </body>
</html>