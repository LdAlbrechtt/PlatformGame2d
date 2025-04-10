# 📜 Visão Geral  
Jogo 2D de plataforma desenvolvido com **Godot 4.0**, apresentando mecânicas clássicas do gênero:  
- 🏃‍♂️ Movimentação fluida do personagem  
- 🪙 Sistema de coleta de itens  
- 🎥 Controle inteligente de câmera  
- 🎮 HUD informativo  
- 🧱 **Plataformas móveis**  

---

## 🛠️ Implementação Atual  

### 🌌 Background com Parallax  
| **Feature**            | **Descrição**                              |  
|-------------------------|--------------------------------------------|  
| Sistema de Profundidade | Efeito visual com múltiplas camadas        |  
| Configuração            | Via `ParallaxBackground` e `ParallaxLayer` |  
| Movimento Dinâmico      | Velocidades diferentes por camada          |  

### 🎭 Animação do Personagem  
- ✅ **Idle** (parado)  
- ✅ **Run** (correndo)  
- ✅ **Jump** (pulando)  
- 🔄 Transições suaves entre estados  
- 🖼️ Gerenciado por `AnimatedSprite2D`  

### 💰 Sistema de Moedas  
| **Componente**         | **Função**                          |  
|-------------------------|-------------------------------------|  
| `Area2D`               | Detecção de colisão                |  
| `CollisionShape2D`     | Área de coleta                     |  
| `body_entered()`       | Evento de coleta                   |  
| `Globals.coins`        | Variável global de pontuação       |  

### 📷 Controle de Câmera  
- 🎯 Segue o personagem com `Camera2D`  
- ✨ Movimento suavizado  
- 🚧 Limites de área configurados  

### 🧱 Plataformas Móveis  
- Movimento horizontal/vertical  
- Configuração de trajetória e velocidade  
- Colisão dinâmica com o personagem  

### 🎪 HUD (Interface)  
| **Elemento**         | **Status**            | **Descrição**               |  
|-----------------------|-----------------------|----------------------------|  
| Contador de Moedas    | ✅ Funcional          | Exibe moedas coletadas      |  
| Temporizador          | 🚧 Em desenvolvimento | Contagem regressiva         |  
| Barra de Vida         | 🚧 Em desenvolvimento | Indicador visual           |  

---

## 🚀 Próximos Passos  
- 🎯 Sistema de inimigos e dano  
- 🧱 Outras **plataformas especiais**:  
  - Desaparecem  
  - Frágeis  
- 🔊 Sistema de áudio:  
  - Efeitos sonoros  
  - Trilha musical  
- 🖥️ Menus e fluxo de jogo  

---

## ✨ Conclusão  
O projeto já possui mecânicas essenciais funcionais, incluindo **plataformas móveis**. O foco atual é expandir a jogabilidade e aprimorar a experiência do jogador.  
