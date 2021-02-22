### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 22553970-7531-11eb-2ce1-8ba86dc1ab9f
using LinearAlgebra

# ╔═╡ ebd1bad0-7531-11eb-0dea-8fbedec090ae
using PlutoUI

# ╔═╡ 7220e642-7534-11eb-32d3-b3c114bd375a
using Plots

# ╔═╡ b9e85330-7531-11eb-2745-efef27894143
md"Selección de alpha: 
$(@bind alpha Slider(-1:0.05:8))
Y omega: 
$(@bind omega Slider(0:0.05:10))
"

# ╔═╡ e8a29390-7534-11eb-1d34-b9d683417154
md"alpha: $(alpha)
"

# ╔═╡ 334f8ce0-7535-11eb-367b-654b7437a822
md"omega: $(omega)"

# ╔═╡ 00dba312-7536-11eb-39f2-f9edcb9121aa
A = [0 1; -omega^2 -2*alpha*omega]

# ╔═╡ 3634f660-7531-11eb-2147-2987044658aa
autovalores,_=eigen(A)

# ╔═╡ ba9d7260-7531-11eb-1c4d-8fec9a81b175
scatter(real(autovalores),imag(autovalores),
	grid=true,legend=false, framestyle = :origin,
	xaxis=[-12,12], yaxis=[-12,12] )

# ╔═╡ b8339e50-7531-11eb-3dcc-49180f369080


# ╔═╡ 63145c40-7534-11eb-3476-93b050519106


# ╔═╡ Cell order:
# ╠═22553970-7531-11eb-2ce1-8ba86dc1ab9f
# ╠═ebd1bad0-7531-11eb-0dea-8fbedec090ae
# ╠═7220e642-7534-11eb-32d3-b3c114bd375a
# ╟─b9e85330-7531-11eb-2745-efef27894143
# ╟─e8a29390-7534-11eb-1d34-b9d683417154
# ╟─334f8ce0-7535-11eb-367b-654b7437a822
# ╠═ba9d7260-7531-11eb-1c4d-8fec9a81b175
# ╠═00dba312-7536-11eb-39f2-f9edcb9121aa
# ╟─3634f660-7531-11eb-2147-2987044658aa
# ╠═b8339e50-7531-11eb-3dcc-49180f369080
# ╠═63145c40-7534-11eb-3476-93b050519106
