close all
clear all
pkg load image

caminho = '/workspace/moedas/teste/';
arquivo = '3.jpg';

im = imread(strcat(caminho, arquivo));

#-----------------
#Pré-processamento
#-----------------

% Reduzindo o tamanho da imagem para melhorar o processamento
im = im(1:2:size(im,1), 1:2:size(im,2), :);
im = im(1:2:size(im,1), 1:2:size(im,2), :);

% Separando as cores
R = im(:,:,1);
G = im(:,:,2);
B = im(:,:,3);
gray  = rgb2gray(im);

% Pré-processamento das moedas
moedas = gray;
% Vermelho menos o verde pois a moeda de 10 centavos e 50 centavos é prateada,
% logo o verde é fraco nas moedas e o vermelho forte.
moedas = contraste(moedas);
imwrite(moedas, strcat(caminho, 'pre_moedas.jpg'));

% Pré-processamento das partes amareladas das moedas
parte_amarela = G-B;
% Verde menos o azul pois a moeda de 25 centavos e 1 real é amarelada,
% logo o verde é forte nas moedas e o azul fraco.
parte_amarela = contraste(parte_amarela);
imwrite(parte_amarela, strcat(caminho, 'pre_parte_amarela.jpg'));

% Pré-processamento da tampinha
tampinha = gray-G;
% Vermelho menos o verde pois a moeda de 25 centavos e 1 real é amarelada, 
% logo o verde é forte nas moedas
tampinha = contraste(tampinha);
imwrite(tampinha, strcat(caminho, 'pre_tampinha.jpg'));


#-----------
#Binarização
#-----------

EE = [0 0 1 1 1 0 0; 
      0 1 1 1 1 1 0; 
      1 1 1 1 1 1 1; 
      1 1 1 1 1 1 1; 
      1 1 1 1 1 1 1; 
      0 1 1 1 1 1 0; 
      0 0 1 1 1 0 0];

moedas = moedas > 80;
moedas = erosion(moedas, EE);
imwrite(moedas, strcat(caminho, 'bin_moedas.jpg'));

parte_amarela = parte_amarela > 80;
parte_amarela = erosion(parte_amarela, EE);
imwrite(parte_amarela, strcat(caminho, 'bin_parte_amarela.jpg'));

tampinha = tampinha > 80;
tampinha = tampinha - parte_amarela;
tampinha = erosion(tampinha, EE);
imwrite(tampinha, strcat(caminho, 'bin_tampinha.jpg'));


