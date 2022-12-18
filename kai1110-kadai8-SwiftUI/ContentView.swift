
import SwiftUI
 
struct ContentView: View {
    @State var sliderNumber: Double = 0.0
    var body: some View {
        VStack {
            TabView {
                SliderView(sliderNumber: $sliderNumber, backGroundColor: Color.red)
                    .tabItem {
                        Text("item 1")
                    }
                SliderView(sliderNumber: $sliderNumber, backGroundColor: Color.green)
                    .tabItem {
                        Text("item 2")
                    }
            }
        }
    }
}

struct SliderView: View {
    @Binding var sliderNumber: Double
    let backGroundColor: Color
    var body: some View {
        ZStack {
            backGroundColor
            VStack {
                Text("\(sliderNumber)")
                Slider(value: $sliderNumber, in: 0...1)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
