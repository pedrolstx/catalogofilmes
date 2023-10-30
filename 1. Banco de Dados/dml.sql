use catalogoFilmesDB;

-- carga inicial usuário admin
insert into tb_usuario (nm_usuario, ds_email, ds_senha)
				 values('pedro', 'pedro@admin.com', 'abc@123');
     
     
-- 	CSU01:: efetuar login 
select id_usuario id,
	   nm_usuario nome,
       ds_email	  email
  from tb_usuario
where ds_email = 'pedro@admin.com'
and   ds_senha = 'abc@123';


-- CSU02:: cadastrar novo filme
insert into tb_filme (id_usuario, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel, img_filme)
		       values(1, 'Harry Potter e a Camara Secreta', 'Daora', 8.2, '2002-12-22', true, '/storage/filmes/124124.jpg'); 
      
      
-- CSU03:: alterar filme
update tb_filme
 set   tb_filme      	= 'Harry Potter e a Pedra Filosofial',
	   ds_sinopse  		= 'Filme Top',
       vl_avaliacao		= 9.5,
       dt_lancamento	= '2010-05-03',
       bt_disponivel	=  true,
       img_filme 		= '/storage/filmes/124124.jpg'
where  id_filme = 1;


-- CSU04:: remover filme
delete from tb_filme
	   where id_filme = 1;
       
	
-- CSU05:: consultar todos os filmes
select id_filme			id,
       nm_filme			nome,
       vl_avaliacao		avalicao,
       dt_lancamento	lancamento,
       bt_disponivel	disponivel
from tb_filme;


-- CSU06:: consultar filmes por nome
select id_filme			id,
       nm_filme			nome,
       vl_avaliacao		avalicao,
       dt_lancamento	lancamento,
       bt_disponivel	disponivel
  from tb_filme 
 where nm_filme 	    like '%a';
 
 
 -- CSU07:: consultar filme por id
select id_filme			id,
       nm_filme			nome,
       vl_avaliacao		avalicao,
       dt_lancamento	lancamento,
       bt_disponivel	disponivel,
       img_filme		capa
  from tb_filme 
 where id_filme 	    = 1;