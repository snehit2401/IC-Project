function dsig = huff_deco(comp,dict) % comp must be a numeric vector (row or col)
dsig = {};
[n1, n2] = size(comp);
if n1 > n2
    n = n1;
else
    n = n2;
end
dictSize = size(dict,1);

N = size(dict,1);
m = zeros(1,N);
for k = 1:N
    m(k)  = length(cell2mat(dict(k,2)));
end
[~,I] = sort(m);
dict(:,1) = dict(I,1);
dict(:,2) = dict(I,2);

function symbol = getSymbol(code)
symbol = NaN;
for j = 1:dictSize
    tmpCode = cell2mat(dict(j,2));
    tmpCodeSize = size(tmpCode, 2);
    codeSize = size(code, 2);
    if tmpCodeSize > codeSize
        break;
    end
    if (isequal(codeSize,tmpCodeSize) && isequal(tmpCode,code))
        symbol = cell2mat(dict(j,1));
        break;
    end
end
end

beginning = 1;
ending = 1;
while ending < n
    symbol = getSymbol(comp(beginning:ending));
    while isnan(symbol)
        ending = ending + 1;
        symbol = getSymbol(comp(beginning:ending));
    end
    dsig(size(dsig,2)+1) = cellstr(num2cell(symbol));
    if ending ~= n
        ending = ending + 1;
        beginning = ending;
    end
end

end
