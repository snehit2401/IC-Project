function c = MDD(y,code)
    
    Y = code-y;                 %%    
    Y = abs(Y);                 %% Calculating distance bw y and each        
    Y = sum(Y,2);               %% codeword in the given code 
    
    idx = find(Y == min(Y));        
    s = numel(idx);             %% getting indices of min distance   
    x = randperm(s,1);          %% codewords and picking one of them
    idx = idx(x);               %% at random
    
    c = code(idx,:);        
end