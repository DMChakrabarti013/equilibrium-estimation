# Demand Elasticity Estimation
## Theoretical Framework - 1
Suppose we have to estimate the demand elasticity for cars, and we write down demand and supply systems. Let the demand system be 
```math
\ln \left( q^d \right) = a-b \ln \left( p \right)
```
and the supply system be 
```math
\ln \left( q^s \right) = c + d \ln \left( p \right) - \ln\left( p^e \right)
```
where $a,b,c,d,e$ are positive parameters, $q^d$ is quantity demanded, $q^s$ is quantity supplied and $p^e$ is price of electricity (an input in car production).

Observe that
```math
\epsilon^d = \frac{\partial \ln \left( q^d \right)}{\partial \ln \left( p \right)} = b
```
is the parameter of interest. The equilibrium condition is $\ln\left( q^d \right) = \ln\left( q^s \right)$. Then,
$a - b \ln \left( p \right) = c + d \ln\left( p \right) - e \ln\left( p \right)  \implies a - b \ln \left( p^* \right) = c + d \ln \left( p^* \right) - e \ln \left( p^* \right)
 \implies \ln \left( p^* \right) = \frac{a-c}{d+b} + \frac{e}{d+b} \ln \left( p^* \right).$


Let $\beta_{0} = \frac{a-c}{d+b}$ and $\beta_{1} = \frac{e}{d+b}$ gives us
```math
\ln\left( p^* \right) = \beta_{0} + \beta_{1} \ln \left( p^e \right).
```
Then, $\ln (q^*) = \alpha_{0} + \alpha_{1} \ln (p^e)$ where $\alpha_{0} = a - b \beta_{0}$ and $\alpha_{1} = -b \beta_{1}$, implying that
```math
b = \frac{\alpha_{1}}{\beta_{1}}.
```

## Empirical Framework
The "ps3_data.mat" file has a vector "q" that has data on log quantities, "pcar" has data on log relative prices of cars and "elecp" has data on log relative price of quantity. These are monthly data for the US from 1990 to 2007.

```matlab
% loading .mat file
load("ps3_data.mat")

alpha = (elecp'*elecp)\(elecp'*q);
beta = (elecp'*elecp)\(elecp'*pcars);

elasticity = alpha/beta
```

## Theoretical Framework - 2
Let us assume that the demand function is wrong and that it should be equal to
```math
\ln \left( q^d \right) = a - b \ln\left( p \right) - f \ln\left( p^e \right)
```
with a new parameter $f > 0$.

Setting equilibrium conditions, we have $b = - \frac{\alpha_{1} +f}{\beta_{1}}$ where $\alpha_{1} = a - b \beta_{0}$ for $\beta_{0} = \frac{a-c}{b+d}$ and $\beta_{1} = \frac{e-f}{b+d}$. So the previous method would not estimate the demand elasticity in this case, because there is now the parameter $f$
that needs to be accounted for.

