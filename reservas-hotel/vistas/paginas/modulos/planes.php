<?php

$planes = ControladorPlanes::ctrMostrarPlanes();

?>

<!--=====================================
PLANES
======================================-->

<div class="planes container-fluid bg-white p-0" id="planes">
	
	<div class="container p-0">
		
		<div class="grid-container">
			
			<div class="grid-item">
				
				<h1 class="text-center py-3 py-lg-5 tituloPlan text-uppercase" translate="yes" tituloPlan="Bienvenido">Bienvenido</h1>

				<p class="text-muted text-left px-4 descripcionPlan" descripcionPlan="DISFRUTE DEL CONFORT Y LA TRANQUILIDAD QUE EL HOTEL PORTO BELLO PUEDE BRINDARLE; SIÉNTASE COMO EN CASA Y SEA PARTE DE NUESTRA GRAN FAMILIA.">DISFRUTE DEL CONFORT Y LA TRANQUILIDAD QUE EL HOTEL MIRAMAR PUEDE BRINDARLE; SIÉNTASE COMO EN CASA Y SEA PARTE DE NUESTRA GRAN FAMILIA.</p>

			</div>

			<?php foreach ($planes as $key => $value): ?>

			<div class="grid-item d-none d-lg-block" data-toggle="modal" data-target="#modalPlanes">
				
				<figure class="text-center">
					
					<h1 descripcion="<?php echo $value["descripcion"]; ?>" class="text-uppercase">PLAN <?php echo $value["tipo"]; ?></h1>

				</figure>

				<img src="<?php echo $servidor.$value["img"]; ?>" class="img-fluid" width="100%">


			</div>
				
			<?php endforeach ?>	
			
		</div>

	</div>

</div>
