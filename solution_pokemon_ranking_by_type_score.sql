


with cte_puntajes_pokemon as (
select  
	a.name, 
	a.primary_type,
	b.attack,
	b.speed,
	b.attack + b.speed as puntaje_de_combate,
	dense_rank() over (
	partition by a.primary_type  order by b.attack + b.speed desc) ranking_por_tipo
from
	pokemon a
join stats b on
	b.pokemon_id = a.id
)
select
	*
from
	cte_puntajes_pokemon
where ranking_por_tipo <= 3
order by primary_type, ranking_por_tipo;

