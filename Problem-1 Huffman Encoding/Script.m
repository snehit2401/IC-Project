source_file1 = fopen('source_file1.txt');
source_file2 = fopen('source_file2.txt');
source_file3 = fopen('source_file3.txt');

% taking input from source file
source1 = fscanf(source_file1,'%c');
source2 = fscanf(source_file2,'%c');
source3 = fscanf(source_file3,'%c');

% taking unique characters from the source
symbols1 = unique(source1);
symbols2 = unique(source2);
symbols3 = unique(source3);

% creating a cell array to plot histogram
A1 = cellstr(num2cell(source1));
A2 = cellstr(num2cell(source2));
A3 = cellstr(num2cell(source3));

B1 = cellstr(num2cell(symbols1));
B2 = cellstr(num2cell(symbols2));
B3 = cellstr(num2cell(symbols3));

G1 = B1;
G1(1) = {'space'};
G2 = B2;
G2(1) = {'space'};
G3 = B3;
G3(1) = {'space'};

C1 = categorical(A1,B1,G1);
C2 = categorical(A2,B2,G2);
C3 = categorical(A3,B3,G3);

% probability histogram
figure;
h1 = histogram(C1,'Normalization','probability');
xlabel('symbols');
ylabel('probability');
title('source-1');
figure;
h2 = histogram(C2,'Normalization','probability');
xlabel('symbols');
ylabel('probability');
title('source-2');
figure;
h3 = histogram(C3,'Normalization','probability');
xlabel('symbols');
ylabel('probability');
title('source-3');

p1 = h1.Values;
p2 = h2.Values;
p3 = h3.Values;

% generating huffman code dict
dict1 = huff_dict(B1,p1);
dict2 = huff_dict(B2,p2);
dict3 = huff_dict(B3,p3);

% encoding source with huffman code
huff_code1 = huff_enco(source1,dict1);
huff_code2 = huff_enco(source2,dict2);
huff_code3 = huff_enco(source3,dict3);

code_file1 = fopen('code_file1.txt','w');
code_file2 = fopen('code_file2.txt','w');
code_file3 = fopen('code_file3.txt','w');

% writing on code file
nbytes1 = fwrite(code_file1,huff_code1);
nbytes2 = fwrite(code_file2,huff_code2);
nbytes3 = fwrite(code_file3,huff_code3);

fclose(code_file1);
fclose(code_file2);
fclose(code_file3);

code_file1 = fopen('code_file1.txt');
code_file2 = fopen('code_file2.txt');
code_file3 = fopen('code_file3.txt');

code1 = (fread(code_file1))';
code2 = (fread(code_file2))';
code3 = (fread(code_file3))';

% reading message from code file
message1 = strjoin(huff_deco(code1,dict1),"");
message2 = strjoin(huff_deco(code2,dict2),"");
message3 = strjoin(huff_deco(code3,dict3),"");