clear all
close all

%%%%%%%%%%%%%%%%% CASE I %%%%%%%%%%%%%%%%%
    n = 15;             
    k = 10;             
    p = 0.015;          
    
%%%%%%%%%%%% Generating Random Code %%%%%%%%%%%%%%
    All_codewords = dec2bin(2^n-1:-1:0)-'0';       %%% All the codewords of length n
    
    index = randperm(2^n,2^k);                     %%
    code = ones(2^k,n);                            %% Selecting 2^k random codewords
    for kk = 1:2^k                                 %% out of all the codewords 
        code(kk,:) = All_codewords(index(kk),:);   %% 
    end                                            %%
    
%%%%%%%%%%%%%%%%%%% Decoding %%%%%%%%%%%%%%%%%%%%%    
    pp = zeros(1,5);

for kk = 1:5
    E = 0;                                         %% Error Counter
    N = 2000;
    
    for nn = 1:N
        r = randperm(2^k,1);            
        Random_Code_Word = code(r,:);                  %% Picking a random codeword 
        
        y = BSC_Channel(Random_Code_Word,p);           %% Sending it into BSC channel 
    
        Estimate = MDD(y,code);                        %% Getting it's estimate from MDD
    
        if (Estimate == Random_Code_Word)              %% If estimate is not equal to 
            E = E;                                     %% original then increment E by 1        
        else
            E = E + 1;
        end
    end    
    pp(kk) = E/N;
end 

    P(1) = min(pp);
    
%%%%%%%%%%%%%%%%% CASE II %%%%%%%%%%%%%%%%%
    n = 15;             
    k = 10;             
    p = 0.1;          
    
%%%%%%%%%%%% Generating Random Code %%%%%%%%%%%%%%
    All_codewords = dec2bin(2^n-1:-1:0)-'0';       %%% All the codewords of length n
    
    index = randperm(2^n,2^k);                     %%
    code = ones(2^k,n);                            %% Selecting 2^k random codewords
    for kk = 1:2^k                                 %% out of all the codewords 
        code(kk,:) = All_codewords(index(kk),:);   %% 
    end                                            %%
    
%%%%%%%%%%%%%%%%%%% Decoding %%%%%%%%%%%%%%%%%%%%%    
    pp = zeros(1,5);

for kk = 1:5
    E = 0;                                         %% Error Counter
    N = 2000;
    
    for nn = 1:N
        r = randperm(2^k,1);            
        Random_Code_Word = code(r,:);                  %% Picking a random codeword 
        
        y = BSC_Channel(Random_Code_Word,p);           %% Sending it into BSC channel 
    
        Estimate = MDD(y,code);                        %% Getting it's estimate from MDD
    
        if (Estimate == Random_Code_Word)              %% If estimate is not equal to 
            E = E;                                     %% original then increment E by 1        
        else
            E = E + 1;
        end
    end    
    pp(kk) = E/N;
end 

    P(2) = min(pp);
    
%%%%%%%%%%%%%%%%% CASE III %%%%%%%%%%%%%%%%%
    n = 15;             
    k = 10;             
    p = 0.45;          
    
%%%%%%%%%%%% Generating Random Code %%%%%%%%%%%%%%
    All_codewords = dec2bin(2^n-1:-1:0)-'0';       %%% All the codewords of length n
    
    index = randperm(2^n,2^k);                     %%
    code = ones(2^k,n);                            %% Selecting 2^k random codewords
    for kk = 1:2^k                                 %% out of all the codewords 
        code(kk,:) = All_codewords(index(kk),:);   %% 
    end                                            %%
    
%%%%%%%%%%%%%%%%%%% Decoding %%%%%%%%%%%%%%%%%%%%%    
    pp = zeros(1,5);

for kk = 1:5
    E = 0;                                         %% Error Counter
    N = 2000;
    
    for nn = 1:N
        r = randperm(2^k,1);            
        Random_Code_Word = code(r,:);                  %% Picking a random codeword 
        
        y = BSC_Channel(Random_Code_Word,p);           %% Sending it into BSC channel 
    
        Estimate = MDD(y,code);                        %% Getting it's estimate from MDD
    
        if (Estimate == Random_Code_Word)              %% If estimate is not equal to 
            E = E;                                     %% original then increment E by 1        
        else
            E = E + 1;
        end
    end    
    pp(kk) = E/N;
end 

    P(3) = min(pp);

%%%%%%%%%%%%%%%%% CASE IV %%%%%%%%%%%%%%%%%
    n = 20;             
    k = 10;             
    p = 0.015;          
    
%%%%%%%%%%%% Generating Random Code %%%%%%%%%%%%%%
    All_codewords = dec2bin(2^n-1:-1:0)-'0';       %%% All the codewords of length n
    
    index = randperm(2^n,2^k);                     %%
    code = ones(2^k,n);                            %% Selecting 2^k random codewords
    for kk = 1:2^k                                 %% out of all the codewords 
        code(kk,:) = All_codewords(index(kk),:);   %% 
    end                                            %%
    
%%%%%%%%%%%%%%%%%%% Decoding %%%%%%%%%%%%%%%%%%%%%    
    pp = zeros(1,5);

for kk = 1:5
    E = 0;                                         %% Error Counter
    N = 2000;
    
    for nn = 1:N
        r = randperm(2^k,1);            
        Random_Code_Word = code(r,:);                  %% Picking a random codeword 
        
        y = BSC_Channel(Random_Code_Word,p);           %% Sending it into BSC channel 
    
        Estimate = MDD(y,code);                        %% Getting it's estimate from MDD
    
        if (Estimate == Random_Code_Word)              %% If estimate is not equal to 
            E = E;                                     %% original then increment E by 1        
        else
            E = E + 1;
        end
    end    
    pp(kk) = E/N;
end 

    P(4) = min(pp);
  
%%%%%%%%%%%%%%%%% CASE V %%%%%%%%%%%%%%%%%
    n = 20;             
    k = 10;             
    p = 0.1;          
    
%%%%%%%%%%%% Generating Random Code %%%%%%%%%%%%%%
    All_codewords = dec2bin(2^n-1:-1:0)-'0';       %%% All the codewords of length n
    
    index = randperm(2^n,2^k);                     %%
    code = ones(2^k,n);                            %% Selecting 2^k random codewords
    for kk = 1:2^k                                 %% out of all the codewords 
        code(kk,:) = All_codewords(index(kk),:);   %% 
    end                                            %%
    
%%%%%%%%%%%%%%%%%%% Decoding %%%%%%%%%%%%%%%%%%%%%    
    pp = zeros(1,5);

for kk = 1:5
    E = 0;                                         %% Error Counter
    N = 2000;
    
    for nn = 1:N
        r = randperm(2^k,1);            
        Random_Code_Word = code(r,:);                  %% Picking a random codeword 
        
        y = BSC_Channel(Random_Code_Word,p);           %% Sending it into BSC channel 
    
        Estimate = MDD(y,code);                        %% Getting it's estimate from MDD
    
        if (Estimate == Random_Code_Word)              %% If estimate is not equal to 
            E = E;                                     %% original then increment E by 1        
        else
            E = E + 1;
        end
    end    
    pp(kk) = E/N;
end 

    P(5) = min(pp);
   
%%%%%%%%%%%%%%%%% CASE VI %%%%%%%%%%%%%%%%%
    n = 20;             
    k = 10;             
    p = 0.45;          
    
%%%%%%%%%%%% Generating Random Code %%%%%%%%%%%%%%
    All_codewords = dec2bin(2^n-1:-1:0)-'0';       %%% All the codewords of length n
    
    index = randperm(2^n,2^k);                     %%
    code = ones(2^k,n);                            %% Selecting 2^k random codewords
    for kk = 1:2^k                                 %% out of all the codewords 
        code(kk,:) = All_codewords(index(kk),:);   %% 
    end                                            %%
    
%%%%%%%%%%%%%%%%%%% Decoding %%%%%%%%%%%%%%%%%%%%%    
    pp = zeros(1,5);

for kk = 1:5
    E = 0;                                         %% Error Counter
    N = 2000;
    
    for nn = 1:N
        r = randperm(2^k,1);            
        Random_Code_Word = code(r,:);                  %% Picking a random codeword 
        
        y = BSC_Channel(Random_Code_Word,p);           %% Sending it into BSC channel 
    
        Estimate = MDD(y,code);                        %% Getting it's estimate from MDD
    
        if (Estimate == Random_Code_Word)              %% If estimate is not equal to 
            E = E;                                     %% original then increment E by 1        
        else
            E = E + 1;
        end
    end    
    pp(kk) = E/N;
end 

    P(6) = min(pp);   
    
    t = 1:6;
    stem(t,P)
    title('P(error) for different cases')
    xlabel("CASE")
    ylabel('P(error)')