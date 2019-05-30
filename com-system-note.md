# communication-system

## we take the communication system apart of 3 points:

- point-to-point: how would one communicate with the basement
- share the channel: how would multiple user talk with one basement
- network: how would the basements communicate with each other and how to find the best way

## point-to-point

#### the components that compose a system

![Snipaste_2019-04-04_08-31-02](doc\Snipaste_2019-04-04_08-31-02.png)

to make thing easier, we focus on a simple one first

![Snipaste_2019-04-04_08-32-43](doc\Snipaste_2019-04-04_08-32-43.png)

- the source and dest describe information using bits, bits are kind of the state.
- the transmitter and receiver render bits with phisical phenomenone like waveforms
- the channel will change the waveform, of cource we don't want it change

#### how does the bit encode

a interesting idea is that, we could encode it with a tree

![Snipaste_2019-04-04_08-38-38](doc\Snipaste_2019-04-04_08-38-38.png)

#### continuous and descrete time signals

we have already know, i don't want to talk anymore.

#### decrise time bit

![Snipaste_2019-04-04_08-49-23](doc\Snipaste_2019-04-04_08-49-23.png)

SPB means sample per bit, which means how many sample to represent a bit

$bittime=SPB \cdot T_s$ and $bitrate=\frac{1}{bit-time}$

#### present the wave form

here are diffent ways

![Snipaste_2019-04-04_08-55-25](doc\Snipaste_2019-04-04_08-55-25.png)

and we often present it using the step function

![Snipaste_2019-04-04_08-57-34](doc\Snipaste_2019-04-04_08-57-34.png)

- if the bit changes from 0 to 1 at sample D, add $u(n-D)$
- if the bit changes from 1 to 0 at sample D, subtract $u(n-D)$
- if no change, do nothing

#### dicrese time model

![Snipaste_2019-04-04_09-03-15](doc\Snipaste_2019-04-04_09-03-15.png)

our model: input is $x(n)=u(n)-u(n-5)$ and out put is $y_m(n)=(1-a^{n+1})u(n)+...$

#### why we use a model

3 layers:
- understant the operation of the system
- predict performace of a system
- do something to improve the system

#### the channel can cause some problems

- attenuation
- delay
- offset
- blurring of transitions
- noise

we assume that the channel is linear, so that we can describe the channel using $y(n) = kx(n-d)+c$ which k means attenuation, d means delay and c means offset.

write the output of system:

depart input $x(n)$ to many $u(n)$s, $u(n)$ to $s(n)$.add them together

the receiver:$y(n)=c+noise(n)+s(n)-s(n-5)$ when input is $u(n)-u(n-5)$

#### communication protocal

what is protocal: it's a set of rules and procedures to follow. Without protocals, you may "hear" what is being said, but you will never "understand" it.

Protocals in communication systems:

- the representation of text characters (ASCII vs Unicode), images (.jpg or .png) and videos (mpg4 flv .etc)
- the representation of individual bits (light on to indicate 1)
- the bit time (SPB)
- **training sequense** (to decide parameter values like c and k)
- ** Synchronization method** (to tell you when to start)
