Suppose we have to estimate the demand elasticity for cars, and we write down demand and supply systems. Let the demand system be 
$$\ln \left( q^d \right) = a-b \ln \left( p \right)$$
and the supply system be 
$$\ln \left( q^s \right) = c + d \ln \left( p \right) - \ln\left( p^e \right)$$
where $a,b,c,d,e$ are positive parameters, $q^d$ is quantity demanded, $q^s$ is quantity supplied and $p^e$ is price of electricity (an input in car production).

Observe that
$$\epsilon^d = \frac{\partial \ln \left( q^d \right)}{\partial \ln \left( p \right)} = b$$
is the parameter of interest. The equilibrium condition is $\ln\left( q^d \right) = \ln\left( q^s \right)$. Then,
\begin{align*}
a - b \ln \left( p \right) = c + d \ln\left( p \right) - e \ln\left( p \right) & \implies a - b \ln \left( p^* \right) = c + d \ln \left( p^* \right) - e \ln \left( p^* \right)\\
& \implies \ln \left( p^* \right) = \frac{a-c}{d+b} + \frac{e}{d+b} \ln \left( p^* \right).
\end{align*}

Let $\beta_{0} = \frac{a-c}{d+b}$ and $\beta_{1} = \frac{e}{d+b}$ gives us
$$\ln\left( p^* \right) = \beta_{0} + \beta_{1} \ln \left( p^e \right).$$
Then, $\ln (q^*) = \alpha_{0} + \alpha_{1} \ln (p^e)$ where $\alpha_{0} = a - b \beta_{0}$ and $\alpha_{1} = -b \beta_{1}$, implying that
$$b = \frac{\alpha_{1}}{\beta_{1}}.$$
