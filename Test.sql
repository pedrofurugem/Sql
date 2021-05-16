--Exercício 1.1
DECLARE
frase CHAR;
BEGIN
 dbms_output.put_line('É preciso treinar para aprender' || frase);
END;

--Exercício 1.3 - Produto entre 28 e 43
DECLARE
a  NUMBER;
b  NUMBER;
produto NUMBER;
BEGIN
a := 28;
b := 43;
produto := a * b;
dbms_output.put_line('Produto entre 28 e 43: ' || produto);
END;

--Exercício 1.6
ACCEPT in_n1 NUMBER PROMPT 'Digite o primeiro valor';
ACCEPT in_n2 NUMBER PROMPT 'Digite o segundo valor';
ACCEPT in_n3 NUMBER PROMPT 'Digite o terceiro valor';
DECLARE
  p1 NUMBER;
  p2 NUMBER;
  p3 NUMBER;
  media NUMBER;
BEGIN
  p1 := 3;
  p2 := 2;
  p3 := 4;
  media := ((&in_n1 * p1) + (&in_n2 * p2) + (&in_n3 * p3)) / 3;
  dbms_output.put_line(media);
END;


--Exercício 1.7 - antecessor e sucessor de um número
ACCEPT in_n NUMBER PROMPT 'Digite um valor';
DECLARE
  antecessor NUMBER;
  sucessor NUMBER;
BEGIN
  antecessor := &in_n - 1;
  sucessor := &in_n + 1;
dbms_output.put_line(antecessor);
dbms_output.put_line(sucessor);
END;

--Exercício 1.8
ACCEPT in_nome CHAR PROMPT 'digite seu nome: '
ACCEPT in_endereco CHAR PROMPT 'digite seu endereço: '
ACCEPT in_telefone CHAR PROMPT 'digite seu telefone: '
BEGIN
 dbms_output.put_line ('nome: ' || '&in_nome');
 dbms_output.put_line ('endereço: ' || '&in_endereco');
 dbms_output.put_line ('telefone: ' || '&In_telefone');
END;

--Exercício 1.9
ACCEPT in_a NUMBER PROMPT 'Digite o divisor';
ACCEPT in_b NUMBER PROMPT 'Digite o dividendo';
DECLARE
  quociente NUMBER;
  resto NUMBER;
BEGIN
  quociente := &in_a / &in_b;
  resto := MOD(&in_a, &in_b);
  dbms_output.put_line(quociente);
  dbms_output.put_line(resto);
END;

--Exercício 1.10
ACCEPT in_a NUMBER PROMPT 'Digite o valor do salário';
DECLARE
  acress NUMBER;
BEGIN
  acress := &in_a + (1/100);
  dbms_output.put_line(acress);
EXCEPTION
 WHEN OTHERS THEN
 dbms_output.put_line('Falhou');
END;

--Exercicio 1.11
ACCEPT in_a NUMBER PROMPT 'Digite o valor do salário';
ACCEPT in_b NUMBER PROMPT 'Digite um valor entre 0 e 100';
DECLARE
  acress NUMBER;
BEGIN
  acress := &in_a + in_b;
  dbms_output.put_line(acress);
END;

--Exercício 1.12
ACCEPT in_b NUMBER PROMPT 'Digite o valor da base';
ACCEPT in_h NUMBER PROMPT 'Digite um valor altura(h)';
DECLARE
  a NUMBER;
  p NUMBER;
BEGIN
  a := &in_b * &in_h;
  p := SQRT(a);
  dbms_output.put_line(p);
END;

--Exercício 1.13

--Exercício 1.14
ACCEPT in_b NUMBER PROMPT 'Digite o valor da base';
ACCEPT in_h NUMBER PROMPT 'Digite um valor altura(h)';
DECLARE
  a NUMBER;
  p NUMBER;
BEGIN
  a := &in_b * &in_b;
  a2 := SQRT(a);
  dbms_output.put_line(a2);
END;

--Exercício 1.15
ACCEPT in_c1 NUMBER PROMPT 'Digite o valor do primeiro cateto';
ACCEPT in_c2 NUMBER PROMPT 'Digite o valor do segundo cateto';
DECLARE
  hip NUMBER;
  hip2 NUMBER;
BEGIN
  hip := (&in_c1 * &in_c1) * (&in_c2 * &in_c2); 
  hip2 := SQRT(bip);
  dbms_output.put_line(hip);
END;

--Exercício 1.16
ACCEPT in_p NUMBER PROMPT 'Digite o valor do produto';
DECLARE
  acress NUMBER;
  total NUMBER;
BEGIN
   acress := 9 / 100;
   total := &in_p + acress;
    dbms_output.put_line('valor total do produto: ' || total);
END;
   
--Exercício 1.17
ACCEPT in_celsius NUMBER PROMPT 'Digite o valor do produto';
DECLARE
  F NUMBER;
BEGIN
  F := ( 9 * &in_celsius + 160) / 5;
  dbms_output.put_line(F);
END;

--Exercício 1.8

--Exercício 1.9

--Exercício 2.0

--Exercício 2.2
ACCEPT in_v1 NUMBER PROMPT 'Digite o primeiro valor';
ACCEPT in_v2 NUMBER PROMPT 'Digite o segundo valor';
DECLARE
   soma NUMBER;
   soma8 NUMBER;
   soma5 NUMBER;
BEGIN
   soma := &in_v1 + &in_v2;
   soma8 := soma + 8;
   soma5 := soma + 5;
IF soma >= 20 THEN
 dbms_output.put_line(soma8);
 ELSE
 dbms_output.put_line(soma5);
END IF;
END;

--Exercício 2.3
ACCEPT n NUMBER PROMPT 'Digite um valor';
DECLARE 
  n NUMBER;
BEGIN
 IF MOD (n, 3) = 0 THEN
 dbms_output.put_line(n || ' n é multiplo de 3');
 ELSE
 dbms_output.put_line (n || 'n não é multiplo de 3');
 END IF;
END;
  
--Exercício 2.4 --se é divisivel por 7 e por 6
ACCEPT n NUMBER PROMPT 'Digite um valor';
BEGIN
  IF MOD(&n, 3) = 0 THEN
   dbms_output.put_line(n || ' n é multiplo de 3');
   ELSIF MOD(&n, 7) = 0 THEN
   dbms_output.put_line(n || ' n é multiplo de 7');
   ELSE
   dbms_output.put_line (n || 'n não é multiplo de 3 ou 7');
   END IF;
END;

--Exercício 2.5:
ACCEPT in_n NUMBER PROMPT 'Digite o valor do salario';
ACCEPT in_p NUMBER PROMPT 'Digite o valor da parcela';
DECLARE
  acress NUMBER;
  sal_total NUMBER;
BEGIN
  acress := (&in_p / 100);
  sal_total := acress + in_n;
  IF acress < 30/100 THEN
   dbms_output.put_line('salario: ' || in_n);
   dbms_output.put_line('salario total: ' || sal_total);
   dbms_output.put_line('emprestimo pode ser concedido');
   ELSE
   dbms_output.put_line('emprestimo não pode ser concedido');
   END IF;
END;
  
--Exercício 2.6
ACCEPT estado CHAR PROMPT 'Digite uma sigla de estado';
BEGIN
  IF estado = ' AC ' THEN
      dbms_output.put_line ('&estado' || ' acreano ');
  ELSIF estado = ' AL '  THEN
      dbms_output.put_line ('&estado' || ' alagoano ');
  ELSIF estado = ' AP '  THEN
      dbms_output.put_line ('&estado' || ' amapaense ');    
  ELSIF estado = ' AP '  THEN
      dbms_output.put_line ('&estado' || ' amozonense/baré ');  
  ELSIF estado = ' BA '  THEN
      dbms_output.put_line ('&estado' || ' baiano ');
  ELSIF estado = ' CE '  THEN
      dbms_output.put_line ('&estado' || ' cearense ');
  ELSIF estado = ' DF '  THEN
      dbms_output.put_line ('&estado' || ' brasiliense/candango ');
  ELSIF estado = ' ES '  THEN
      dbms_output.put_line ('&estado' || ' Espirito Santo '); 
  ELSIF estado = ' GO '  THEN
      dbms_output.put_line ('&estado' || ' goiano ');   
  ELSIF estado = ' MA '  THEN
      dbms_output.put_line ('&estado' || ' maranhense/maranhão ');  
  ELSIF estado = ' MT '  THEN
      dbms_output.put_line ('&estado' || ' matogrossense '); 
  ELSIF estado = ' MS '  THEN
      dbms_output.put_line ('&estado' || ' mato-grossense-do-sul/sul-mato-grossense '); 
  ELSIF estado = ' MG '  THEN
      dbms_output.put_line ('&estado' || ' mineiro ');  
  ELSIF estado = ' PA '  THEN
      dbms_output.put_line ('&estado' || ' paraense ');     
  ELSIF estado = ' PB '  THEN
      dbms_output.put_line ('&estado' || ' paraibano '); 
  ELSIF estado = ' PR '  THEN
      dbms_output.put_line ('&estado' || ' paranaense/paranista '); 
  ELSIF estado = ' PE '  THEN
      dbms_output.put_line ('&estado' || ' pernambuncano ');    
  ELSIF estado = ' PI '  THEN
      dbms_output.put_line ('&estado' || ' piauiense/piauizeiro '); 
  ELSIF estado = ' RR '  THEN
      dbms_output.put_line ('&estado' || ' roraiamense '); 
  ELSIF estado = ' RO '  THEN
      dbms_output.put_line ('&estado' || ' rondaniense/rondoniano '); 
  ELSIF estado = ' RJ '  THEN
      dbms_output.put_line ('&estado' || ' carioca '); 
  ELSIF estado = ' RN '  THEN
      dbms_output.put_line ('&estado' || ' potiguar/rio-grandense-do-norte '); 
  ELSIF estado = ' RS '  THEN
      dbms_output.put_line ('&estado' || ' gaúcho/rio-grandense-do-sul '); 
  ELSIF estado = ' SC '  THEN
      dbms_output.put_line ('&estado' || ' catarinense/barriga verde '); 
  ELSIF estado = ' SP '  THEN
      dbms_output.put_line ('&estado' || ' paulista '); 
  ELSIF estado = ' SE '  THEN
      dbms_output.put_line ('&estado' || ' sergipano/sergipense '); 
  ELSIF estado = ' TO '  THEN
      dbms_output.put_line ('&estado' || ' tocantinense '); 
  END IF;
END;


--Exercício 2.7
ACCEPT in_n1 NUMBER PROMPT 'Digite o primeiro valor';
ACCEPT in_n2 NUMBER PROMPT 'Digite o segundo valor';
ACCEPT in_n3 NUMBER PROMPT 'Digite o terceiro valor';
BEGIN
   IF &in_n1 > &in_n2 AND &in_n1 > &n_n3 AND &in_n2 > &in_n3 THEN
   dbms_output.put_line (in_n1 || in_n2 || in_n3); 
   ELSIF &in_n2 > &in_n1 AND &in_n2 > &n_n3 AND &in_n1 > &in_n3 THEN
   dbms_output.put_line (in_n2 || in_n1 || in_n3);
   ELSIF &in_n2 > &in_n1 AND &in_n2 > &n_n3 AND &in_n3 < &in_n1 THEN
   dbms_output.put_line (in_n2 || in_n3 || in_n1);
   ELSIF &in_n3 > &in_n1 AND &in_n3 > &n_n2 AND &in_n2 > &in_n1 THEN
   dbms_output.put_line (in_n3 || in_n2 || in_n1);
   ELSIF &in_n1 > &in_n2 AND &in_n1 > &n_n2 AND &in_n3 > &in_n2 THEN
   dbms_output.put_line (in_n1 || in_n3 || in_n2);
   ELSIF &in_n3 > &in_n1 AND &in_n3 > &n_n2 AND &in_n1 > &in_n2 THEN
   dbms_output.put_line (in_n3 || in_n1 ||  in_n2);
   END IF;
END;
   
--Exercício 2.9
ACCEPT sexo CHAR PROMPT 'Digite a inicial de seu sexo (H OU M)';
ACCEPT peso NUMBER PROMPT 'informe o seu peso';
DECLARE
aux VARCHAR2;
peso_ideal FLOAT;
BEGIN
  IF aux = 'H' THEN
  peso_ideal := 72.7 * &peso - 58;
  dbms_output.put_line ('seu peso ideal é: '|| peso_ideal );
  ELSIF aux = 'M' THEN
  peso_ideal := 62.1 * &peso - 44.7;
  dbms_output.put_line ('seu peso ideal é: '|| peso_ideal );
  END IF;
END;


--Exercício 2.10

ACCEPT a NUMBER PROMPT 'Digite o primeiro valor';
ACCEPT b NUMBER PROMPT 'Digite o segundo valor';
ACCEPT c NUMBER PROMPT 'Digite o terceiro valor';
DECLARE
a NUMBER;
b NUMBER;
c NUMBER;
delta NUMBER;
BEGIN
   delta := b * b - 4 * a * c;
   --String necessariamente entre aspas simples
   dbms_output.put_line('Delta: ' || delta);
    EXCEPTION
    WHEN OTHERS THEN
   dbms_output.put_line('Falhou');
END;

--Exercício 2.11
ACCEPT n NUMBER PROMPT 'digite um numero de 1 a 12';
BEGIN
    IF n = 1 THEN
    dbms_output.put_line ('janeiro');
    ELSIF n = 2 THEN
    dbms_output.put_line ('fevereiro');
    ELSIF n = 3 THEN
    dbms_output.put_line ('março'); 
    ELSIF n = 4 THEN
    dbms_output.put_line ('abril'); 
    ELSIF n = 5 THEN
    dbms_output.put_line ('maio'); 
    ELSIF n = 6 THEN
    dbms_output.put_line ('junho'); 
    ELSIF n = 7 THEN
    dbms_output.put_line ('julho'); 
    ELSIF n = 8 THEN
    dbms_output.put_line ('agosto'); 
    ELSIF n = 9 THEN
    dbms_output.put_line ('setembro'); 
    ELSIF n = 10 THEN
    dbms_output.put_line ('outubro'); 
    ELSIF n = 11 THEN
    dbms_output.put_line ('novembro'); 
    ELSIF n = 12 THEN
    dbms_output.put_line ('dezembro'); 
  END IF;
END;
  
  
--Exercício 2.12

--Exercício 2.13
ACCEPT n NUMBER PROMPT 'digite a kilometragem';
ACCEPT c CHAR PROMPT 'digite o tipo de carro, A, B ou C';
BEGIN
  IF c = ' A ' THEN
  dbms_output.put_line(n); 
  dbms_output.put_line ('Consumo de 12km por litro'); 
  ELSIF c = ' B ' THEN
  dbms_output.put_line(n); 
  dbms_output.put_line ('Consumo de 9km por litro'); 
  ELSIF c = ' C ' THEN
  dbms_output.put_line(n); 
  dbms_output.put_line ('Consumo de 8km por litro'); 
  END IF;
END;






