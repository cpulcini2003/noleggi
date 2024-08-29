select 
tipologia, 
SUM(prezzo_acquisto - prezzo_vendita) as guadagno
from veicoli
group by tipologia;