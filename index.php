<!DOCTYPE html>
<html>
<head>
    <title>Sistema de Gestión de Cobranza Sofia</title>
    <link rel="stylesheet" type="text/css" href="estilos.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $('a#odbcLink').click(function(event) {
                event.preventDefault();
                $('#Content').load('ODBC.php');
            });
            $('a#pdoLink').click(function(event) {
                event.preventDefault();
                $('#Content').load('PDO.php');
            });
        });
    </script>
</head>
<body>
    <header>
        <h1>Sistema de Gestión de Cobranza </h1>
    </header>

    <nav>
        <ul>
            <li><a href="index.php">Inicio</a></li>
            <li><a href="clientes.php">Clientes</a></li>
            <li><a href="cobranzas.php">Cobranzas</a></li>
            <li><a href="reportes.php">Reportes</a></li>
            <li><a id="odbcLink" href="#">Conexion ODBC</a></li>
            <li><a id="pdoLink" href="#">Conexion PDO</a></li>
        </ul>
    </nav>

    <section>
        <h2>Bienvenido al sistema de gestión de cobranza</h2>
        <p>Aquí puedes comenzar a administrar tus cobranzas de manera eficiente.</p>
        <!-- Agrega más contenido y funcionalidad según tus necesidades -->
        <div id="Content"></div>
    </section>

    <footer>
        <p>&copy; <?php echo date("Y"); ?> - Sistema de Gestión de Cobranza</p>
    </footer>
</body>
</html>
