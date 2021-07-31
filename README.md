## nhuff 

Implementation of the three Huffman coding functions mentioned bellow as part of a digital telecommunications course. I used Octave, because the assignment had to be explicitly implemented in Matlab or Octave. As I cannot afford to buy Matlab I chose Octave. 

#### content
 * myhuffmandict - Generate Huffman code dictionary for source with known probability mode
 * myhuffmanenco - Huffman encoder
 * myhuffmandeco - Huffman decoder

#### using the repository
Those functions can be found for Octave but are not bundled with the official version. So instead of searching, downloading and installing the right packages you can instead use this repository. I tried to maintain as much compatibillity as possible with mathworks specifications for those functions.

**download** and **install** (for *nix users)
```bash
git clone git@github.com:PGryllos/nhuff.git
cd nhuff && TMP=$(pwd)
echo 'addpath("'$TMP'")' > ~/.octaverc
mv myhuffmandict.m huffmandict.m && mv myhuffmanenco.m huffmanenco.m && mv myhuffmandeco.m huffmandeco.m
```
Be carefull, in case you already have similar functions installed by another package don't execute the last line and 
instead refer to the functions with the prefix `my`

#### usage
```matlab
dict = myhuffmandict(symbols, p)
```
Receives a list of distinct symbols  along with a vector p of corresponding probabillities and outputs a two-column cell array where column-1 stores the symbols and column-2 their corresponding Huffman code. The symbols can be represented either as a cell array or as a numeric vector. The size of p must match the number of symbols. 

```matlab
comp = myhuffmanenco(sig, dict)
```
Encodes the signal sig using the Huffman codes described by the code dictionary dict. sig, must have the form of a numeric vector. dict, must have the form described above. comp is the resulting endocing of sig.

```matlab
dsig = myhuffmandeco(comp,dict)
```
Decodes the numeric Huffman code vector comp using the code dictionary dict. dsig must the same as the original signal sig.

##### notes
 * As a convention the probabilities don't have to add up to exactly 1. In this sense the values in vector p can be characterized more as importance weights rather than probabilities. Though, for achieving best compression ratio it is better to adjust the weights so that they do add up to 1.
 * The functions are implemented in a naive manner, so they don't take advantage of what matlab / octave have to offer regarding matrix operations. As a result their performance is pretty slow. I may take the time at some point and try to vectorize some of the functionality and then compare their performance against the built-in equivalents.

##### tests
Some tests are also provided under `huffmantests` to showcase the performance of the encoder under different circumstances. Their execution will take a while. 


author
----
Gryllos Prokopis (gryllosprokopis@gmail.com)

