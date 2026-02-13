# 🔥 Mafia-hub-v1 (redZ / MAFIA / t.c.c Hub)

Base estrutural oficial do hub estilo **Mafia / redZ / t.c.c**, usada como padrão para projetos em Brookhaven e outros jogos.

Estrutura organizada, limpa e modular.

---

# 📦 Carregamento da Lib

```lua
-- carregar lib (codigo fonte)
local tcc = loadstring(game:HttpGet("https://raw.githubusercontent.com/SrDark222/Mafia-hub-v1/refs/heads/main/mafia%20hub2.lua"))()


---

🪟 Criando a Janela Principal

local Window = tcc:MakeWindow({
    Title = "MAFIA HUB - Brookhaven",
    SubTitle = "by menor DK",
    SaveFolder = "tcc_hub.lua"
})

📌 Parâmetros

Campo	Tipo	Descrição

Title	string	Nome principal do Hub
SubTitle	string	Subnome exibido abaixo do título
SaveFolder	string	Nome do arquivo de config



---

➖ Botão de Minimizar (OBRIGATÓRIO)

Window:AddMinimizeButton({
    Button = { 
        Image = "rbxassetid://100971981026789", 
        BackgroundTransparency = 0 
    },
    Corner = { 
        CornerRadius = UDim.new(0.4, 1) 
    }
})

Permite fechar e reabrir o hub.


---

📑 Criando Abas

local Tab1 = Window:MakeTab({"Um", "cherry"})
Window:SelectTab(Tab1)

📌 Parâmetros

Window:MakeTab({"NomeDaAba", "icone"})


---

🎟 Discord Invite

Tab1:AddDiscordInvite({
    Name = "MAFIA Hub",
    Description = "Entrar no server",
    Logo = "rbxassetid://100971981026789",
    Invite = "Link do discord convite",
})


---

📂 Section

local Section = Tab1:AddSection({"secção"})


---

📜 Paragraph

local Paragraph = Tab1:AddParagraph({
    "Paragraph", 
    "Este é um parágrafo\nSegunda linha"
})


---

🧩 Dialog (Janela Popup)

local Dialog = Window:Dialog({
    Title = "TEMA ALTERADO",
    Text = "a cor",
    Options = {
        {"confirmar", function()
            
        end},
        {"Talvez", function()
            
        end},
        {"cancelar", function()
            
        end}
    }
})


---

🔘 Botão

Tab1:AddButton({
    "Print",
    function(Value)
        print("TCC DOMINA")
    end
})


---

🔁 Toggle (Modo 1 - Callback Separado)

local Toggle1 = Tab1:AddToggle({
    Name = "Toggle",
    Description = "Isto é um  <font color='rgb(88, 101, 242)'>toggle</font> EXEMPLO",
    Default = false 
})

Toggle1:Callback(function(Value)
    
end)


---

🔁 Toggle (Modo 2 - Callback Inline)

Tab1:AddToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(v)
        
    end
})


---

🎚 Slider

Tab1:AddSlider({
    Name = "Speed",
    Min = 1,
    Max = 100,
    Increase = 1,
    Default = 16,
    Callback = function(Value)
        
    end
})

📌 Parâmetros

Campo	Descrição

Min	Valor mínimo
Max	Valor máximo
Increase	Quanto aumenta por passo
Default	Valor inicial



---

📋 Dropdown

local Dropdown = Tab1:AddDropdown({
    Name = "Players List",
    Description = "Select the <font color='rgb(88, 101, 242)'>Number</font>",
    Options = {"one", "two", "three"},
    Default = "two",
    Flag = "dropdown teste",
    Callback = function(Value)
        
    end
})


---

📝 TextBox

Tab1:AddTextBox({
    Name = "Name item",
    Description = "1 Item on 1 Server", 
    PlaceholderText = "item only",
    Callback = function(Value)
        
    end
})


---

🧠 Estrutura Completa Exemplo

local tcc = loadstring(game:HttpGet("https://raw.githubusercontent.com/SrDark222/Mafia-hub-v1/refs/heads/main/mafia%20hub2.lua"))()

local Window = tcc:MakeWindow({
    Title = "MAFIA HUB - Brookhaven",
    SubTitle = "by menor DK",
    SaveFolder = "tcc_hub.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://100971981026789", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0.4, 1) }
})

local Tab1 = Window:MakeTab({"Main", "cherry"})
Window:SelectTab(Tab1)

Tab1:AddSection({"Sistema"})

Tab1:AddButton({
    "Test Button",
    function()
        print("Botão funcionando")
    end
})

Tab1:AddToggle({
    Name = "Test Toggle",
    Default = false,
    Callback = function(v)
        print("Estado:", v)
    end
})

Tab1:AddSlider({
    Name = "Speed",
    Min = 1,
    Max = 100,
    Increase = 1,
    Default = 16,
    Callback = function(Value)
        print("Speed:", Value)
    end
})

Tab1:AddDropdown({
    Name = "Modo",
    Options = {"Normal", "Hard", "Extreme"},
    Default = "Normal",
    Callback = function(Value)
        print("Modo:", Value)
    end
})

Tab1:AddTextBox({
    Name = "Item Name",
    PlaceholderText = "Digite aqui",
    Callback = function(Value)
        print("Texto:", Value)
    end
})


---

📌 Padrão Oficial Estrutural

MakeWindow
 ├── AddMinimizeButton
 ├── MakeTab
 │    ├── AddDiscordInvite
 │    ├── AddSection
 │    ├── AddParagraph
 │    ├── AddButton
 │    ├── AddToggle
 │    ├── AddSlider
 │    ├── AddDropdown
 │    └── AddTextBox
 └── Dialog


---

✅ Modelo Base Registrado

Este README representa o padrão estrutural oficial do:

Mafia-hub-v1 (redZ / MAFIA / t.c.c hub)

Pode ser usado como:

Base para novos hubs

Template público

Documentação técnica

Referência estrutural



---

Se quiser depois eu monto versão profissional estilo open-source com badge, preview, changelog e estrutura organizada tipo repo grande.
