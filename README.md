# PID-Controller-of-Rod-Vibration-Suppression
This repository is implemented to suppress (mitigate) unwanted oscillations in a rod element. 
Unwanted vibrations (oscillations) in electro-mechanical elements is an issue which can end up in damages, catastrophic costs in industrial machineries, breakdowns, failures, and at leas lack of precision in device operations. To avoid such drawbacks, engineers attempt to design proper controller. Such controllers mitigate, suppress, or isolate oscillations. In this repository, unwanted vibrations of a mechanical rod is mitigated using a PID controller. PID controller is a grreat choice due to its simplicity, cost effectiveness, and easy-to-understand concepts. 
Assuming impulsive disturbances, PID controller is capable of mitigating the disturbance in decent amount of time. Of course, the gain values for the proportional, integral and derivative parts of the controller leads to different profiles in vibration amplitude. This means, one can readily reach his/her design desires by adopting various values of such gains. 
Here is the animation of the time series analysis of the rod: 

https://user-images.githubusercontent.com/61955953/157273550-2815214b-1d96-41f4-bbbd-b4dbb9505cca.mp4

![image](https://user-images.githubusercontent.com/61955953/133807962-aa9f3ba9-19a4-4b5b-ab22-aea50e1e1c9d.png)

increasing the derivative part of the controller, leads to severely damped oscillations. This case may be of interest if we need to mitigate and suppress the vibrations in a short time interval: 

![image](https://user-images.githubusercontent.com/61955953/133811753-686e221a-45d5-4d67-b5d3-c960e0075c84.png)

Conversely, increasing the integral part leads to smooth mitigations and as a result it takes longer time to suppress the oscillations: 

![image](https://user-images.githubusercontent.com/61955953/133813054-269bd089-60b5-4a26-a569-c90d417da47b.png)
