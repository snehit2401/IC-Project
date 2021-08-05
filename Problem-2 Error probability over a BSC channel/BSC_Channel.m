function y = BSC_Channel(C,p)

    n = length(C);                  %% Length of the codeword
    y = ones(1,n);
    
    for nn = 1:n                            
       if (C(nn) == 1)              %% If bit is 1 then it selects        
          x = rand;                 %% 1 with probabilty 1-p and 0 with p
          if x > 1-p
              y(nn) = 0;
          else
              y(nn) = 1;
          end
       else                         %% If bit is 0 then it selets 0 with                 
           x = rand;                %% probability 1-p and 1 with p             
           if x > 1-p
               y(nn) = 1;
           else
               y(nn) = 0;
           end
       end
    end

end