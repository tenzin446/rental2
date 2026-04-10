<?php require "includes/header.php" ?>
<?php require "database/connection.php"?>

<?php
global $conn;

$search = trim($_GET['search'] ?? '');

$carrosserie = $_POST['carrosserie'] ?? [];
$seats = $_POST['seats'] ?? [];
$transmission = $_POST['transmission'] ?? [];

$sql = "SELECT * FROM cars WHERE 1=1";
$params = [];

if ($search !== '') {
    $sql .= " AND Car_Name LIKE ?";
    $params[] = "%$search%";
}

if (!empty($carrosserie)) {
    $placeholders = implode(',', array_fill(0, count($carrosserie
    ), '?'));
    $sql .= " AND Carrosserie IN ($placeholders)";
    $params = array_merge($params, $carrosserie);
}


if (!empty($seats)) {
    $placeholders = implode(',', array_fill(0, count($seats), '?'));
    $sql .= " AND Seats IN ($placeholders)";
    $params = array_merge($params, $seats);
}

if (!empty($transmission)) {
    $placeholders = implode(',', array_fill(0, count($transmission), '?'));
    $sql .= " AND Transmission IN ($placeholders)";
    $params = array_merge($params, $transmission);
}

$stmt = $conn->prepare($sql);
$stmt->execute($params);
$cars = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<main>
    <h2>Ons aanbod</h2>


<div class="filters">
    <form method="POST" action="">

        <h3>Carrosserie</h3>
        <label><input type="checkbox" name="carrosserie[]" value="Sport"> Sport</label>
        <label><input type="checkbox" name="carrosserie[]" value="SUV"> SUV</label>
        <label><input type="checkbox" name="carrosserie[]" value="Hatchback"> Hatchback</label>

        <h3>Seats</h3>
        <label><input type="checkbox" name="seats[]" value="2"> 2 persons</label>
        <label><input type="checkbox" name="seats[]" value="4"> 4 persons</label>
        <label><input type="checkbox" name="seats[]" value="6"> 6 persons</label>

        <h3>Transmission</h3>
        <label><input type="checkbox" name="transmission[]" value="Manual"> Manual</label>
        <label><input type="checkbox" name="transmission[]" value="Auto"> Auto</label>

        <button type="submit" class="button">Filter</button>
    </form>
</div>


    <div class="cars">
        <?php if (count($cars) > 0): ?>
            <?php foreach ($cars as $index => $car): ?>
                <div class="car-details">
                    <div class="car-brand">
                        <h3><?= $car['Model'] ?></h3>
                        <div class="car-type">
                            <?= $car['Carrosserie'] ?>
                        </div>
                    </div>

                    <img src="assets/images/products/car%20(<?= $index ?>).svg" alt="">

                    <div class="car-specification">
                        <span>
                            <img src="assets/images/icons/gas-station.svg" alt="">
                            <?= $car['Tank Contents'] ?>
                        </span>

                        <span>
                            <img src="assets/images/icons/car.svg" alt="">
                            <?= $car['Transmission'] ?>
                        </span>

                        <span>
                            <img src="assets/images/icons/profile-2user.svg" alt="">
                            <?= $car['Seats'] ?>
                        </span>
                    </div>

                    <div class="rent-details">
                        <span class="font-weight-bold">
                            €<?= $car['Price ( per day)'] ?> / dag
                        </span>
                        <a href="/car-detail" class="button-primary">Bekijk nu</a>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p>Geen auto's gevonden.</p>
        <?php endif; ?>
    </div>
</main>

<?php require "includes/footer.php" ?>