# Trabalho de Programação funcional
## Alunos: Marcelo Azevedo e Júlio Cesar

## Introdução
Com este trabalho será apresentado a geração de imagens vetoriais em formato SVG (Scalable Vector Graphics). 
> Linguagens utilizadas: **Haskell e JavaScript**

## Exemplos de imagens de saída
A imagem base utilizada será o logo da montadora de automóveis Audi. Abaixo está o exemlo da logomarca original: 
![AL090142_small](https://user-images.githubusercontent.com/42869269/214034282-010f4cb2-e459-4bf8-a277-00738618cf5f.jpg)

Fonte: Google Imagens

Com o uso do SVG, pretende-se gerar imagens vetoriais tendo como figura base os círculos da logo e, posteoriormente aplicar funções para criar cores aleatórias nos mesmos, como no exemplo abaixo:

![JS1](https://user-images.githubusercontent.com/42869269/215340269-7208f907-9197-434d-869d-c6cdd3b1bd39.png)

Fonte: Imagem SVG gerada em JavaScript

![HS1](https://user-images.githubusercontent.com/42869269/215340287-88ee58a4-68bf-4166-9493-5048837844f7.png)

Fonte: Imagem SVG gerada em Haskell

**OBS: O formato do desenho original foi alterado para melhor visualização da mudança de cores.**


## Como executar o programa em Haskell
1. Acesse o Replit 
    https://replit.com/@Marcelo-Da-Silv/trab-haskell-2022b-julioc-marceloa#Main.hs
2. No canto inferior esquerdo selecione **Shell**
3. Digite o comando **ghci Main.hs**
4. Tecle **ENTER**
5. Após a compilação, digite **main**

A saída será a seguinte:

![HS3](https://user-images.githubusercontent.com/42869269/215340358-ec357326-2452-47dd-a11a-6712ea763717.png)

Posteriormente, a imagem SVG estará no arquivo **ouput.svg**, como no exemplo abaixo:
![HS2](https://user-images.githubusercontent.com/42869269/215340343-10b0a230-01b1-438e-9f9a-48c241e8c003.png)

## Como executar o programa em JavaScript
1. Acesse o Replit
https://replit.com/@JulioCesar377/trab-JS-2022b-julioc-marcelo#index.html
2. Uma aba no browser irá aparecer
![JS3](https://user-images.githubusercontent.com/42869269/215340408-313c7973-504e-4592-88f4-5cd416cd390e.png)
3. Na parte superior direita clique em **RUN** (ou em **Open website**)
4. Ao executar o código, uma janela no lado direito aparecerá e será possível visualizar o desenho em SVG
![JS4](https://user-images.githubusercontent.com/42869269/215340442-86685f51-c946-4bcc-9194-699e6a6f8e6d.png)
6. Ao clicar em um dos círculos, sua cor irá alterar-se.
![JS5](https://user-images.githubusercontent.com/42869269/215340464-413e82a6-f313-4113-a681-b90428ad43db.png)

**OBS: Nos testes realizados, não recomendados o uso do browser Microsoft Edge**

   
## Análise comparativa dos códigos
> Haskell vs Javascript

Apresentando os competidores:

>**Haskell** é uma linguagem de programação funcional, compilada e estaticamente tipada. Ele é usado principalmente para desenvolvimento de aplicações de baixo nível, como sistemas operacionais e compiladores, além de ser usado para aplicações de inteligência artificial e aprendizado de máquina.


>**JavaScript** é uma linguagem de programação interpretada, dinâmica e orientada a objetos. Ele é amplamente usado na web para desenvolvimento de aplicações front-end e back-end. Ele é uma linguagem de alto nível e fácil de aprender, o que o torna popular entre os desenvolvedores web.

Antes de continuar, abaixo estão algumas informações importantes:
>**JavaScript** é uma das linguagens de programação mais populares do mundo e é amplamente utilizada em desenvolvimento web. De acordo com uma pesquisa realizada pela Stack Overflow em 2020, JavaScript foi a linguagem de programação mais popular entre os desenvolvedores, com **69,7%** dos entrevistados afirmando usá-lo.

>**Haskell**, por outro lado, é uma linguagem de programação funcional mais especializada e menos utilizada. A pesquisa da Stack Overflow mostrou que apenas **2,3%** dos desenvolvedores afirmaram usar Haskell. Isso significa que Haskell é menos utilizado do que JavaScript, e é mais comumente usado por desenvolvedores que trabalham com aplicativos financeiros, ciência de dados e desenvolvimento de sistemas.

Abaixo está o código completo em Haskell:
![HS5](https://user-images.githubusercontent.com/42869269/215340527-22256276-cbe3-455b-b912-9c5e669626b7.png)

Abaixo está o código completo em JavaScript:
![JS6](https://user-images.githubusercontent.com/42869269/215340570-cd60b715-fdbd-49ee-b511-517e4249252b.png)

Notamos que a primeira vista o código em Haskell parece ter uma forma abstrata na geração das suas funções, fato que pode gerar certeza estranheza. Por ser considerada uma linguagem de programação de alto desempenho e tecnicamente avançada a escolha entre as duas dependerá do tipo de projeto e dos objetivos do desenvolvedor.

Na disciplina de Paradigmas de Programação ministrada pela profª Andrea Schwertner Charão, tivemos o primeiro contato com a linguagem de programação funcional **Haskell**, como sintaxe e uso de funções... então vamos apresentar como é realizada a geração dos círculos em ambas as linguagens:

### Geração do arquivo SVG ###
> Haskell
> 

![HS6](https://user-images.githubusercontent.com/42869269/215340625-8121eee7-02ae-479d-a989-080438069928.png)


Fonte: Trecho do código em Haskell

A saída da função **svgBegin** em Haskell será um tipo **String** que representa o início de um arquivo SVG. Os dois parâmetros **'w' e 'h'** representam a largura e altura do SVG, respectivamente. A função **show** é utilizada para converter os valores dos parâmetros para strings e os concatena com as outras strings. Dessa forma gera-se a string 

> JavaScript

![JS7](https://user-images.githubusercontent.com/42869269/215340806-4110cf15-75da-4759-bdfe-27cb7867bc9c.png)

Fonte: Trecho do código em JavaScript

A tag **svg** cria um elemento SVG com as dimensões de largura e altura com valor **500**, respectivamente e atribui a classe **desenho** ao mesmo.

### Geração do círculo
> Haskell
![HS 7](https://user-images.githubusercontent.com/42869269/215344587-88c1a509-ccf4-4465-bf66-cf895f8e2f97.png)
Fonte: Trecho do código em Haskell

A função **svgCircle** recebe quatro parâmetros **x, y, r,  style** representando respectivamente as coordenadas **x, y, centro, raio e estilo (cor)**, retornado uma string que representa um círculo em SVG.

> JavaScript

![JS 7](https://user-images.githubusercontent.com/42869269/215344642-cdb6d3d3-e19c-45e4-a5c5-0424691c5f71.png)


Fonte: Trecho do código em JavaScript

A função **circle** cria um elemento círculo SVG e define os valores de **r, cx , cy, stroke, fill**, respectivamente, **raio, coordenadado x, coordenada y, definição de cor e preenchimento**. Após isso, ele adiciona o elemento criado selecionado com a classe **desenho** e retorna o elemento criado.

### Cores RGB aleatórias
>Haskell

![HS 8](https://user-images.githubusercontent.com/42869269/215344790-7d18cb7b-0df4-43d2-bd55-8cee231e5286.png)
>Fonte: Tracho do código em Haskell

A função **randomRGB** utiliza a biblioteca **random** para gerar valores unitários aleatórios para **R, G, B** entre **0 e 255**. Em seguida, retorna uma string com os valores gerados.

> JavaScript
> 
![JS 8](https://user-images.githubusercontent.com/42869269/215344831-c30c9563-b288-416c-9e26-da84de03dd8d.png)

> 
> Fonte: Trecho do código em JavaScript

A função **randomColor()** gera um valor aleatório no formato hexadecimal, que será utilizada na geração das cores. A função **querySelectorAll** faz uso de todos os elementos **circle** presentes na página HTML. Utilizamos o atributo **forEach** para adicionar um evento "click" para cada círculo, onde a cor de preenchimento e borda serão atualizados para uma cor aleatória gerada por **randomColor()** ao clicá-los.

### Enfim, a geração da imagem SVG
>Haskell

>![HS 9](https://user-images.githubusercontent.com/42869269/215344935-fc29f4a5-aaec-431c-b2fe-4d8b20b79ae9.png)

Fonte: Trecho do código em Haskell

A função **svgAll** cria as cores aleatórias dos círculos de forma aleatória por meio da função **randomRGB**, atribuindo valores para as variáveis **color1, color2, color3, color4**. Posteriormente, utiliza-se outras criadas anteriormente, como **svgBegin, svgCircle e svgEnd** para criar os círculos com as coordenadas e tamanhos específicos. A função **main** imprime uma mensagem informando onde o arquivo SVG será salvo e chama a função **svgAll** para criar e salvar o arquivo.

>JavaScript

![JS 9](https://user-images.githubusercontent.com/42869269/215344987-c9a0c34c-bae0-476f-b013-ccc47f87303a.png)


Fonte: Trecho do código em JavaScript

A variável **varios** contém uma lista de objetos no formato JSON representando círculo posicionados em eixos de coordenadas x distintos, bem como as cores. O mesmo será passado como parâmetro para a função **circle**, que irá criar e desenhar círculos com as especificações fornecidas.

![JS 10](https://user-images.githubusercontent.com/42869269/215345041-2d8c8113-c444-42bc-999f-d63b40518ce7.png)

Fonte: Trecho do código em JavaScript

A variável **circles** está selecionando todos os elementos do tipo **circle** e atribuindo o evento "click". Quando o usuário clicar em um dos círculos, a função **randomColor()** é chamada para gerar uma cor aleatória de **stroke e fill** do círculo clicado. Posteriormente, cria-se uma cópia em texto do SVG e convertida em um objeto **Blob (elemento binário)** com o tipo **image/svg+xml;charset=utf-8**. Por fim, uma URL é gerada para esse objeto.

## Conclusão

Após a execução dos códigos em Haskell e JavaScript, podemos observar que ambos são capazes de criar imagens SVG porém, ambos contém suas especificidades para tal feito. 
A forma de criação escolhida em Haskell foi a criação de um arquivo **output.svg** que, altera-se a cada execução. Em JavaScript, após a execução o usuário fica responsável pela alteração das cores, ao clicar nos círculos de sua preferência.
Isto posto, este trabalho agiu de maneira agregadora à nosso conhecimento em linguagens de programação imperativa e funcional.

## Créditos 
Agradecemos ao site www.w3schools.com/graphics/ por nos guiar com tutorias de SVG e Haskell;

Também, a profª Andrea Schwertner Charão por apresentar-nos ao fascinamente mundo dos Paradigmas de Programação.
