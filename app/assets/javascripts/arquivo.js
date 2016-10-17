<script type="text/javascript">
$('document').ready(function(){
	$('#loading').hide();
	$('#buscar').click(function(){
		$('#buscar').val('');
	});
	$('#buscar').keyup(function(){
		$('#loading').ajaxStart(function(){
			$('#alvo').hide();
			$('#loading').show();	
		});
		$('#loading').ajaxStop(function(){
			$('#loading').hide();	
		});
		$.post('busca.php',
		{busca: $('#buscar').val()},
		function(data){
			if ($('#buscar').val()!=''){
				$('#alvo').show();
				$('#alvo').empty().html(data);
			}
			else{
				$('#alvo').empty();
			}
		}
		);
	});
});
</script>