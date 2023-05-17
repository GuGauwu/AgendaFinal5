<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    

    <title>Agenda</title>
</head>
<body>
    <div class="container">
    <?php
        include ("login.php");    
    ?>
    </div>
    <article class="mt-5">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-md-4 mx-auto">
                        <div class="card w-70">
                            <div class="card-body">
                                <div class="mb-5">
                                    <h2>Registarse</h2>
                                </div>
                                <form method="POST">
                                    <div class="mb-5">
                                        <label for="username" class="form-label">Nombre de usuario:</label>
                                        <input  class="form-control" type="text" id="username" name="username">
                                    </div>
                                    <div class="mb-5">
                                        <label for="password" class="form-label">Contraseña:</label>
                                        <input class="form-control" type="password" id="password" name="password">
                                    </div>
                                    <div class="mb-5">
                                        <label for="password" class="form-label">Confirmar contraseña:</label>
                                        <input class="form-control" type="password" id="password1" name="password1">
                                    </div>
                                    <div class="mb-4 mx-auto">
                                        <input name="btn_registarse" type="submit" value="Registarse" class="btn btn-primary">
                                        
                                    </div>
                                    
                                </form>
                                
                            </div>
                        </div>
                    </div>
                </div>

            </div>
    </article>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    
    <div class="container mt-5">
        <div class="row">
        </div>
    </div>
    
    
    
</body>
</html>