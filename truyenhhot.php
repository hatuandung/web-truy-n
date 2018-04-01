<div class="truyen-hot">
	<div class="tieu-de">
		<div id ="main" style="width: 100%; text-align: center; height: 30px; border-bottom: 1px solid black; margin-bottom: : 10px;" >
			<h3>truyện xem nhiều nhất</h3>
		</div>
		 <?php 
				foreach ($hottr as $ht ) {
			?>
				<div class="rank">
					<nav class="col-md-3" style="border-bottom: 1px dashed;border-right: 1px dashed; text-align: center;" >1</nav>
					<nav class="col-md-9" style="border-bottom: 1px dashed; text-align: center;"> <a href="#"><?=$ht->tenTruyen?></a></nav>
				</div>
			<?php
			}
		?> 
		
	</div>
</div> 