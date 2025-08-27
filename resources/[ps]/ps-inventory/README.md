# PS-Inventory

O lj-Inventory foi totalmente redesenhado por [OK1ez](https://github.com/OK1ez), sob o nome ps-inventory.

Novas atualizações estão por vir e, claro, vamos suportar todos os tamanhos de monitores comuns.

# Previews

### Diretrizes simples de itens (encontradas no diretório principal ps-inventory)

![ps-inventory Guideline](https://user-images.githubusercontent.com/91661118/146315681-c67f542d-e2bc-43ca-9957-7f1971b84268.png)

### Inventário Completo

![image](https://github.com/Project-Sloth/ps-inventory/assets/82112471/fda2588d-e468-4fd5-8bf5-2f584f059609)

### Menu de Opções

![image](https://github.com/Project-Sloth/ps-inventory/assets/82112471/1782f97a-27e6-441b-90a1-ff150cd846e2)

### Slots da Barra Rápida

![image](https://github.com/Project-Sloth/ps-inventory/assets/82112471/c0a77f4a-f482-42f5-a5da-1f3571d14130)

### Inventário do Porta-luvas

![image](https://github.com/Project-Sloth/ps-inventory/assets/82112471/432f8c79-1a9f-44d1-8062-50b596194752)

### Inventário do Porta-malas

![image](https://github.com/Project-Sloth/ps-inventory/assets/82112471/f9c78e49-ec51-4d55-9ac0-b7058951d31a)

# Principais Funcionalidades

* TODAS AS IMAGENS SEGUEM AS MESMAS DIMENSÕES
* Template fácil no Photoshop para criar imagens personalizadas dentro do ps-inventory
* Logo personalizado acima dos botões de opção
* Menu de opções
* Caixa de ajuda
* Imagens de inventário personalizadas (mais sempre sendo adicionadas em cada nova atualização)
* Ícone de peso padrão facilmente alterável com ícones do Font Awesome
* Números de teclas de atalho visíveis no inventário e nos slots da barra rápida
* Barra de progresso de peso
* Tooltip com altura determinada (não ficará maior que o visível ou cortado)
* Overflow de texto com reticências (os títulos dos produtos nunca vão sobrepor os containers, mas sim mostrar "...")
* Fundo do inventário desfocado
* Elementos do design NoPixel 3.5 interligados

# Como instalar o ps-inventory (Última atualização do QBCore)

* Baixe o `ps-inventory` do nosso GitHub
* Certifique-se de ter a última atualização do [qb-core](https://github.com/qbcore-framework/qb-core)
* Certifique-se de ter a última atualização do [qb-smallresources](https://github.com/qbcore-framework/qb-smallresources)
* Certifique-se de ter a última atualização do [qb-weapons](https://github.com/qbcore-framework/qb-weapons)
* Arraste o `ps-inventory` para sua pasta de recursos ou qualquer subpasta
* Certifique-se de que a pasta está nomeada como `ps-inventory` e **não** `ps-inventory-main`
* Substitua todas as ocorrências de `ps-inventory` por `ps-inventory`.<br>O exemplo abaixo usa o Visual Studio Code para substituir todas as instâncias.

![ps-inv setup](https://github.com/Project-Sloth/ps-inventory/assets/9503151/f95ceacb-09fa-4619-bd1c-7b7524f4f282)

## Configurando o sistema de decaimento

Se quiser que o sistema de decaimento funcione, leia as informações abaixo, caso contrário ele não funcionará.

Você precisa adicionar um valor de decaimento para todos os itens no arquivo `qb-core/shared/items.lua`, a variável representa o número de dias para o item decair.

### Exemplos:

#### Exemplo do que você precisa adicionar

```lua
-- decay = Número de dias para o item decair
-- delete = Se definido como true, o item será removido quando decair
["decay"] = 28.0, ["delete"] = true
```

#### Exemplo com o item completo no arquivo compartilhado do QB-Core

```lua
['sandwich'] = {['name'] = 'sandwich', ['label'] = 'Sanduíche', ['weight'] = 200, ['type'] = 'item', ['image'] = 'sandwich.png', ['unique'] = false, ['useable'] = true, ['shouldClose'] = true,	['combinable'] = nil, ['description'] = 'Pão gostoso para seu estômago', ["decay"] = 3.0, ["delete"] = true},
```

Neste exemplo, o item sanduíche levaria 3 dias para decair e, quando isso acontecer, será removido.

# Dependências

* [qbcore framework](https://github.com/qbcore-framework)
* [qb-target](https://github.com/BerkieBb/qb-target)
* [qb-core](https://github.com/qbcore-framework/qb-core)
* [qb-logs](https://github.com/qbcore-framework/qb-logs)
* [qb-traphouse](https://github.com/qbcore-framework/qb-traphouse)
* [qb-radio](https://github.com/qbcore-framework/qb-radio)
* [qb-drugs](https://github.com/qbcore-framework/qb-drugs)
* [qb-shops](https://github.com/qbcore-framework/qb-shops)

## Performance

Roda em ~ 0.00 a 0.01 ms. Se tiver sugestões de otimização, fique à vontade para entrar em contato.

# Créditos

* [OK1ez](https://github.com/OK1ez) pelo redesign completo.
* ihyajb (Aj) pela [versão original](https://github.com/ihyajb/aj-inventory)
* Jay pelo [decay](https://github.com/tnj-development/inventory)
* i-kulgu pelo [decay atualizado](https://github.com/i-kulgu/ps-inventory-decay)
* [OnlyCats](https://github.com/onlycats) que ajudou a reorganizar e também criou algumas imagens personalizadas.

# Problemas e Sugestões

Por favor, use o sistema de issues do GitHub para reportar problemas ou fazer sugestões. Ao sugerir algo, mantenha [Suggestion] no título para deixar claro que é uma sugestão.

## Conecte-se conosco

Junte-se ao nosso [**Discord**](https://discord.gg/projectsloth) para atualizações, suporte e testes antecipados especiais!
