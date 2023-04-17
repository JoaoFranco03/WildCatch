import SwiftUI

struct Emoji: Identifiable {
    let id = UUID()
    let text: String
    var position: CGPoint
    var speed: CGFloat
}

struct EmojiView: View {
    let emojis = ["🐱","🐮","🐶","🐠","🐢","🐨","🐧","🐰","🐯","🐭","🐵","🐷","🐸","🐺","🐹","🦊","🦁","🐔","🐙","🦭","🐆","🐳"]
    @State var emojiArray = [Emoji]()
    
    var body: some View {
        NavigationView(){
            ZStack {
                GeometryReader { geometry in
                    ZStack {
                        withAnimation(.linear(duration: 0.5)) {
                            ForEach(emojiArray) { emoji in
                                Text(emoji.text)
                                    .font(.largeTitle)
                                    .position(emoji.position)
                            }
                        }
                    }
                    .onAppear {
                        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                            let emoji = emojis.randomElement() ?? "🚀"
                            let x = CGFloat.random(in: 0..<geometry.size.width)
                            let y = -100.0
                            let speed = CGFloat.random(in: 1..<5)
                            emojiArray.append(Emoji(text: emoji, position: CGPoint(x: x, y: y), speed: speed))
                        }
                    }
                    .onReceive(Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()) { _ in
                        for index in (0..<emojiArray.count).reversed() {
                            withAnimation {
                                emojiArray[index].position.y += emojiArray[index].speed * 2
                            }
                            if emojiArray[index].position.y > geometry.size.height + 100 {
                                emojiArray.remove(at: index)
                            }
                        }
                    }
                }
                
                
                ZStack {
                    VStack {
                        Text("WildCatch")
                            .font(.largeTitle)
                            .fontWeight(.bold)                    
                        
                        NavigationLink(destination:ContentView()) {
                            Text("Go to the App")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                    .padding(40)
                    .cornerRadius(20)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20))
                    Spacer()
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
