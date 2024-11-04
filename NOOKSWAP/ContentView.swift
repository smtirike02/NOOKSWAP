import SwiftUI
import MapKit
import AVKit
import AVFoundation
import Foundation



//to do :
//allow users to add their own coordinates
//make the app more smoooth
//avoid position as much as possible



struct ContentView: View {  //splash screen page
    var body: some View {
        NavigationView {
            VStack {
                Image("Union")
                
                
                Text("NOOKSWAP")
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                
                
                
                Button { //Get Started Button
                    print("Button pressed")
                } label: {
                    NavigationLink(destination: Login()){
                        Text("Get Started")
                            .padding(20)
                            .font(.title)
                            .padding(.horizontal, 25)
                            .frame(width: 231, height: 47)
                            .background(Color(red: 0.93, green: 0.91, blue: 0.91))
                            .cornerRadius(200)
                    }
                    .contentShape(Rectangle())
                }
                .padding()
            }
            
        }
        
    }
    
    
}
    
    
    
struct Login: View {  //login page allows users to sign in and go to the next page
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            
            
            TextField("User name",text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            
                .font(.body)
            
                .multilineTextAlignment(.center)
                .frame(width: 231, height: 47)
            
            
            TextField("Email",text: $email)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            
                .font(.body)
            
                .multilineTextAlignment(.center)
                .frame(width: 231, height: 47)
            
            
            
            
            
            
            TextField("Password",text: $password)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            
                .font(.body)
            
                .multilineTextAlignment(.center)
                .frame(width: 231, height: 47)
            
            
            
            
            
            
            Button { //Get Started Button
                print("Button pressed")
            } label: {
                NavigationLink(destination: qr()){
                    Text("Get Started")
                        .foregroundColor(Color.black)
                    
                        .font(.body)
                    
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 234, height: 41)
                        .background(Color(red: 1, green: 0.92, blue: 0.80))
                        .cornerRadius(200)
                    
                    
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.top, 100.0/*@END_MENU_TOKEN@*/)
                
            }
            .navigationBarBackButtonHidden(true)
            
            
        }
        
        
        
        
        
    }
    
}

    
    //struct Welcome: View {
    //    var body: some View {
    //        NavigationLink(destination: Login()){
    //            VStack(alignment: .trailing, spacing: 2.29){
    //                Text("WELCOME👋")
    //                    .font(.largeTitle)
    //                    .foregroundColor(Color.black)
    //                    .multilineTextAlignment(.leading)
    //                    .frame(alignment: .topLeading)
    //                    .position(x:200,y:100)
    //
    //
    //                Text("Select what you’d like out of this app!")
    //                    .font(.title2)
    //                    .fontWeight(.thin)
    //                    .foregroundColor(Color.black)
    //                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
    //                    .position(x:200,y:-0)
    //                    .frame(alignment: .topLeading)
    //
    //                Button { //Get Started Button
    //                    print("Button pressed")
    //                } label: {
    //                    NavigationLink(destination: qr()){
    //                        Text("Read more books")
    //                            .font(.subheadline)
    //                            .foregroundColor(Color.white)
    //                            .padding(10)
    //                            .padding(.horizontal, 25)
    //                            .frame(width: 190, height: 41)
    //                            .background(Color(red: 0.28, green: 0.37, blue: 0.33))
    //                            .cornerRadius(200)
    //
    //
    //                    }
    //
    //                }
    //
    //                Button { //Get Started Button
    //                    print("Button pressed")
    //                } label: {
    //                    NavigationLink(destination: explore()){
    //                        Text("Connecting with readers")
    //                            .font(.subheadline)
    //                            .foregroundColor(Color.white)
    //                            .multilineTextAlignment(.leading)
    //                            .padding(20)
    //                            .frame(width: 228.0, height: 41)
    //                            .background(Color(red: 0.28, green: 0.37, blue: 0.33))
    //                            .cornerRadius(200)
    //
    //
    //                    }
    //
    //                }
    //
    //                Button { //Get Started Button
    //                    print("Button pressed")
    //                } label: {
    //                    NavigationLink(destination: Swap()){
    //                        Text("Explore book swapping locations")
    //                            .font(.subheadline)
    //                            .foregroundColor(Color.white)
    //                            .multilineTextAlignment(.leading)
    //                            .padding(20)
    //                            .padding(.vertical, 5)
    //                            .frame(width: 281.0, height: 41)
    //                            .background(Color(red: 0.28, green: 0.37, blue: 0.33))
    //                            .cornerRadius(200)
    //
    //
    //                    }
    //
    //                }
    //
    //            }
    //        }
    //    }
    //
    //
    //}
    struct qr: View { //qr page which tell you to add book to the profile
        var body: some View {
            
            
            
            VStack{
                Text("ADD BOOK TO PROFILE")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .position(x:200,y:100)
                Image("qrimg")
                    .position(x:200,y:100)
                Button { //Get Started Button
                    print("Button pressed")
                } label: {
                    NavigationLink(destination: BookVid()){ //navigates to book video
                        Text("SCAN")
                            .font(.title)
                            .foregroundColor(Color.black)
                            .padding(10)
                            .frame(width: 234, height: 60)
                            .background(Color(red: 1, green: 0.92, blue: 0.80))
                            .cornerRadius(20)
                            .position(x:200,y:60)
                        
                        
                    }
                    .navigationBarBackButtonHidden(true)
                    
                }
                
                
            }
        }
        
    }

    
struct BookVid: View { //book video which is a mockup of how the qr screen would look like.
    var body: some View {
        
        
        VStack {
            
            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "scanmovie", withExtension: "mp4")!))
            
            
                .frame(height: 615)
                .frame(width:330)
            
            
                .cornerRadius(100)
                .position(x:200,y:350)
            
            
            Button {
                print("Button pressed")
            } label: {
                NavigationLink(destination: grid()){
                    Text("Finish Scan")
                        .foregroundColor(Color.black)
                    
                        .font(.title)
                    
                        .frame(width: 234, height: 41)
                        .background(Color(red: 1, green: 0.92, blue: 0.80))
                        .cornerRadius(200)
                    
                    
                    
                }
                .navigationBarBackButtonHidden(true)
            }
            
            //                        NavigationLink(destination: Profile()){
            //                                              Label("Add Book", systemImage: "arrow.right")
            //                                                  .position(x:320,y:-350)
            //                                                  .accentColor(.black)
            //
            //
            //
            //                                              }
            
            
            
        }
        
        
        
    }
    
}
    


    struct ImageScroll: Identifiable {   ///for image scroll on profile
        ///list of images that will be placed on the profile
        var id = UUID()
        var name: String
        
        static let images: [ImageScroll] = [
            ImageScroll(name: "imgprof1"),
            ImageScroll(name: "imgprof2")
            
            
        ]
        
        static let images1: [ImageScroll] = [
            ImageScroll(name: "book2"),
            ImageScroll(name: "imgprof4")
            
            
        ]
    }
    

    
    
struct grid: View {  //the profile page, allows users to navigate using tabviews to the other pages
    var body: some View {
        TabView {
            ScrollView(showsIndicators: false) {
                VStack{
                    
                    Image("editicon")
                        .resizable()
                        .frame(width:100, height:100)
                    
                    Text("@User")
                        .font(.title3)
                    
                    
                    Text("📍London, United Kingdom")
                        .font(.subheadline)
                    
                    
                    
                    Text("NookSwaps Completed: 10\nLatest NookSwap: @User255")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .frame(width: 323, height: 41)
                    
                    
                    
                }
                .padding(.all, 80.0)
                HStack{
                    VStack {
                        ForEach(ImageScroll.images, id: \.id) { image in
                            Image(image.name)
                                .resizable()
                                .scaledToFill()
                                .frame(minWidth: 0,maxWidth: .infinity)
                                .frame(height: CGFloat.random(in :300 ... 500))  //changes the height in random
                                .cornerRadius(20)
                            
                        }
                    } ////
                    ///
                    VStack {
                        ForEach(ImageScroll.images1, id: \.id) { image in
                            Image(image.name)
                                .resizable()
                                .scaledToFill()
                                .frame(minWidth: 0,maxWidth: .infinity) //no limits on width
                                .frame(height: CGFloat.random(in: 300 ... 500)) //changes height in random
                                .cornerRadius(20)
                            
                        }
                    } ////
                    
                }
                
            }
            .tabItem {  //tab view code
                VStack{
                    Label("Profile", systemImage: "face.smiling")
                }
            }
            .tag(0)
            explore()
            
                .tabItem {
                    VStack{
                        
                        Label("Explore", systemImage: "magnifyingglass")
                        
                    }
                }
                .tag(1)
            
            
            
            
            MapView()
                .tabItem {
                    VStack{
                        
                        Label("Map", systemImage: "map")                            }
                }
                .tag(2)
            
            
            qr()
                .tabItem {
                    VStack{
                        
                        Label("Scan", systemImage: "qrcode")                            }
                }
                .tag(3)
            
            
        }
        .navigationBarBackButtonHidden(true)
        
        
    }
    
}
    
    
    

    
    
    
    
    
    
    
    
    //    struct Profile: View {
    //
    //        var body: some View {
    //
    //
    //            TabView {
    //
    //
    //
    //
    //                VStack() {
    //
    //
    //
    //                    //
    //                    //
    //                    //
    //                    //
    //                    //                Text("@SamiaTirike")
    //                    //                    .font(.title3)
    //                    //                    .position(x:65,y:25)
    //                    //
    //                    //
    //                    //                Text("📍London, United Kingdom")
    //                    //                    .font(.subheadline)
    //                    //                    .position(x:100,y:-30)
    //
    //
    //
    //
    //                    //
    //                    //                Image("book2")
    //                    //                    .cornerRadius(200)
    //                    //                    .position(x:100,y:50)
    //                    //
    //                    //
    //                    //                Image("imgprof2")
    //                    //                    .cornerRadius(200)
    //                    //                    .position(x:290,y:-45)
    //                    //
    //                    //
    //                    //
    //                    //                Image("imgprof3")
    //                    //                    .cornerRadius(200)
    //                    //                    .position(x:100,y:120)
    //                    //
    //                    //                Image("imgprof4")
    //                    //                    .cornerRadius(200)
    //                    //                    .position(x:290,y:25)
    //
    //
    //                    //
    //                    //
    //                    //                RoundedRectangle(cornerRadius: 20)
    //                    //                    .fill(Color(red: 1, green: 0.92, blue: 0.80))
    //                    //                    .frame(width: 277, height: 55)
    //                    //                    .position(x:200,y:100) //yellow
    //                    //
    //                    //
    //                    //
    //                    //
    //                    //
    //                    //
    //                    //
    //                    //
    //                    //                Text("NookSwaps Completed: 10\nLatest NookSwap: @User255")
    //                    //                    .font(.callout)
    //                    //                    .multilineTextAlignment(.center)
    //                    //                    .frame(width: 323, height: 41)
    //                    //                    .position(x:200,y:10) //
    //                    //
    //                    //
    //
    //
    //
    //
    //
    //                }
    //                .tabItem {
    //                    VStack{
    //                        Label("Profile", systemImage: "face.smiling")
    //                    }
    //                }
    //                .tag(0)
    //                explore()
    //
    //                    .tabItem {
    //                        VStack{
    //
    //                            Label("Explore", systemImage: "magnifyingglass")
    //
    //                        }
    //                    }
    //                    .tag(1)
    //
    //
    //
    //
    //                MapView()
    //                    .tabItem {
    //                        VStack{
    //
    //                            Label("Map", systemImage: "map")                            }
    //                    }
    //                    .tag(2)
    //
    //            }
    //
    //
    //
    //        }
    //
    //
    //    }
    //
    //
    
    
    struct City: Identifiable {
        let id = UUID()
        let name: String
        let coordinate: CLLocationCoordinate2D
    }
    
    
    struct Location: Identifiable, Codable, Equatable {
        let id: UUID
        var name: String
        var description: String
        let latitude: Double
        let longitude: Double
    }
    
    struct MapView: View { //map view which shows allows the users to see where locations are aswell as selecting locations
        
        
        //replace region value with other mk coordinates to make locations zoom in
        @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  51.509865, longitude: -0.118092), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
        
        @State var tracking:MapUserTrackingMode = .follow
        
        @State private var locations = [Location]()
        @State private var selection = ""
        let bookswaps = ["Little Free Library, Shoreditch Park", "Acton Town tube book swap", "Greenwich Station", "Little Free Library Wapping", "Gibbon's Rent Little Library", "Limehouse Community Book Exchange", "Oval tube station", "Lewisham Micro Library", "West Ealing station", "Stratford station", "Wimbledon Bookswap", "Acton Central", "Charlton station", "Cheam Station Book Club", "Enfield Chase", "Kingston station", "Northfields station", "Raynes Park waiting room", "Cannon Street", "Highgate station"] //list of diffection location hubs
        
        
        
        
        
        let annotations = [
            City(name: "Little Free Library, Shoreditch Park", coordinate: CLLocationCoordinate2D(latitude: 51.52987, longitude: -0.07806)), //Little Free Library, Shoreditch Park
            City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.50218, longitude: -0.28075)), //Acton Town tube book swap
            
            City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.47802, longitude: -0.0145)), //Greenwich Station
            
            City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.50798, longitude: -0.0546)), //Little Free Library Wapping
            
            City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.51293, longitude: -0.06048)) //Gibbon's Rent Little Library
            
            
        ]
        
        @State var pop = false
        
        var body: some View {  //the body of the map page
            
            ZStack {
                Map(coordinateRegion: $region, annotationItems: annotations) {
                    MapMarker(coordinate: $0.coordinate)} //actually shows the map on the view page
                
                
                
                
                
                .ignoresSafeArea()
                .frame(width: 400, height: 500)
                .cornerRadius(50)
                Circle()
                    .fill(.blue)
                    .opacity(0.3)
                    .frame(width: 50, height: 50)
                
                
                
                
                VStack {
                    
                    Text("NOOKSWAPS NEAR ME ")
                        .font(.largeTitle)
                    
                    
                    
                        .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        .padding(/*@START_MENU_TOKEN@*/.top, 10.0/*@END_MENU_TOKEN@*/)
                    
                    
                    Text("Or add your own")
                        .font(.body)
                    
                        .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            pop.toggle()
                        },label: {
                            Image(systemName: "plus")
                        })
                        .padding()
                        .background(.yellow.opacity(0.50))
                        .foregroundColor(.white)
                        
                        .font(.title)
                        .clipShape(Circle())
                        .padding(.trailing)
                    }
                }
            }
            
            
            .sheet(isPresented: $pop) {
                
                Community()  //when plus button is pressed, the community swap sheetview shows up
                
            }
            
            
            
            
            
        }
        
    }
        
        
        
        struct explore: View {  //the explore page where users can look at other books around the community
            @State var popup1 = false  //for the sheetview screens
            @State var popup2 = false
            @State var popup3 = false
            @State var popup4 = false
            var body: some View {
                
                
                NavigationView {
                    
                    
                    ScrollView {
                        
                        
                        Text("EXPLORE")
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                            .font(.system(size: 50))
                            .rotationEffect(Angle(degrees: 90))
                            .font(.largeTitle)
                            .position(x:20,y:85)
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        Button(action: {
                            popup1.toggle()
                            
                        }, label: {
                            Image("imgprof1")
                            
                                .cornerRadius(200)
                            
                            
                            
                            
                        })
                        .padding(.leading, 200.0)
                        
                        
                        //button one
                        
                        
                        Button(action: {
                            popup2.toggle()
                        }, label: {
                            Image("imgprof2")
                            
                                .cornerRadius(200)
                                .frame(width:100,height:100)
                            
                        })
                        .padding(.trailing, 200.0)
                        
                        
                        
                        Button(action: {
                            popup3.toggle()
                        }, label: {
                            Image("imgprof3")
                            
                                .cornerRadius(200)
                            
                            
                        })
                        .padding(.leading, 200.0)
                        
                        
                        
                        Button(action: {
                            popup4.toggle()
                        }, label: {
                            Image("imgprof4")
                            
                                .cornerRadius(100)
                            
                            
                        })
                        .padding(.trailing, 200.0)
                        
                        
                        .sheet(isPresented: $popup1) {
                            
                            explore_1()
                            
                        }
                        
                        
                        
                        .sheet(isPresented: $popup2) {
                            explore_2()
                            
                        }
                        
                        
                    }
                    
                    
                    .sheet(isPresented: $popup3) {
                        explore_3()
                    }
                    
                    
                }
                
                
                
                .sheet(isPresented: $popup4) {
                    explore_4()
                }
                
                
                
                
                
            }
            
            
        }
        
        
        
        
        
        
        
        
        
        struct explore_1: View { //explore 1,2,3,4  is a sheetview that shows the different books avaliable for users which can direct users to swap books
            @State var shouldPresentSheet = false
            @State private var selection = "Red"
            let colors = ["Red", "Green", "Blue", "Black", "Tartan"]
            var body: some View {
                NavigationView {
                    VStack {
                        
                        
                        
                        Image("imgprof1")
                            .resizable()
                        
                            .scaledToFit()
                            .frame(width:300, height:400)
                            .cornerRadius(40)
                        
                        Text("BOOK TITLE")
                            .font(.largeTitle)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        
                        Text("Author")
                            .font(.callout)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        
                        Text("Swap by @User1")
                            .font(.callout)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        
                            .font(.body)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                            .lineLimit(10)
                            .padding(.top, 20.0)
                        
                        
                        Button { //Get Started Button
                            print("Button pressed")
                        } label: {
                            NavigationLink(destination: Swap()){
                                Text("Create Swap")
                                    .foregroundColor(Color.black)
                                
                                    .font(.body)
                                
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 234, height: 41)
                                    .background(Color(red: 1, green: 0.92, blue: 0.80))
                                    .cornerRadius(200)
                                
                                
                                
                                
                            }
                            
                        }
                        .padding(/*@START_MENU_TOKEN@*/.top, 100.0/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                }
                
                
            }
            
            
        }
        
        
        struct explore_2: View {
            @State var shouldPresentSheet = false
            var body: some View {
                NavigationView {
                    VStack {
                        
                        
                        
                        
                        Image("imgprof2")
                            .resizable()
                        
                            .scaledToFit()
                            .frame(width:300, height:400)
                            .cornerRadius(40)
                        
                        Text("BOOK TITLE")
                            .font(.largeTitle)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        
                        Text("Author")
                            .font(.callout)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        Text("Swap by @User2")
                            .font(.callout)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        
                            .font(.body)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                            .lineLimit(10)
                            .padding(.top, 20.0)
                        
                        
                        
                        
                        Button { //Get Started Button
                            print("Button pressed")
                        } label: {
                            NavigationLink(destination: Swap()){
                                Text("Create Swap")
                                    .foregroundColor(Color.black)
                                
                                    .font(.body)
                                
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 234, height: 41)
                                    .background(Color(red: 1, green: 0.92, blue: 0.80))
                                    .cornerRadius(200)
                                
                                
                                
                                
                            }
                            
                        }
                        .padding(/*@START_MENU_TOKEN@*/.top, 100.0/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                }
                
                
            }
        }
        
        
        struct explore_3: View {
            @State var shouldPresentSheet = false
            var body: some View {
                NavigationView {
                    VStack {
                        
                        
                        
                        
                        Image("imgprof3")
                            .resizable()
                        
                            .scaledToFit()
                            .frame(width:300, height:400)
                            .cornerRadius(40)
                        
                        Text("BOOK TITLE")
                            .font(.largeTitle)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        
                        Text("Author")
                            .font(.callout)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        Text("Swap by @User3")
                            .font(.callout)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        
                            .font(.body)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                            .lineLimit(10)
                            .padding(.top, 20.0)
                        
                        
                        
                        
                        Button { //Get Started Button
                            print("Button pressed")
                        } label: {
                            NavigationLink(destination: Swap()){
                                Text("Create Swap")
                                    .foregroundColor(Color.black)
                                
                                    .font(.body)
                                
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 234, height: 41)
                                    .background(Color(red: 1, green: 0.92, blue: 0.80))
                                    .cornerRadius(200)
                                
                                
                                
                                
                            }
                            
                        }
                        .padding(/*@START_MENU_TOKEN@*/.top, 100.0/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                }
                
                
            }
        }
        
        
        
        struct explore_4: View {
            @State var shouldPresentSheet = false
            var body: some View {
                NavigationView {
                    VStack {
                        
                        
                        
                        
                        Image("imgprof4")
                            .resizable()
                        
                            .scaledToFit()
                            .frame(width:300, height:400)
                            .cornerRadius(40)
                        
                        Text("BOOK TITLE")
                            .font(.largeTitle)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        
                        Text("Author")
                            .font(.callout)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        Text("Swap by @User4")
                            .font(.callout)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                        
                            .font(.body)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                            .lineLimit(10)
                            .padding(.top, 20.0)
                        
                        
                        
                        Button { //Get Started Button
                            print("Button pressed")
                        } label: {
                            NavigationLink(destination: Swap()){
                                Text("Create Swap")
                                    .foregroundColor(Color.black)
                                
                                    .font(.body)
                                
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 234, height: 41)
                                    .background(Color(red: 1, green: 0.92, blue: 0.80))
                                    .cornerRadius(200)
                                
                                
                                
                                
                            }
                            
                        }
                        .padding(/*@START_MENU_TOKEN@*/.top, 100.0/*@END_MENU_TOKEN@*/)
                        
                        
                    }
                }
                
                
            }
            
        }
        
        
struct confirm: View { //confirmation page which allows u to select what books you'd want to swap and what time to leave at the hubs.
    @State private var date = Date()
    @State private var selectedTheme = "Book 1 by John Doe"
    let themes = ["Book 1 by John Doe" ,"Book 2 by John Doe","Book 3 by John Doe","Book 4 by John Doe"]
    @State private var selection = ""
    let bookswaps = ["Little Free Library, Shoreditch Park", "Acton Town tube book swap", "Greenwich Station", "Little Free Library Wapping", "Gibbon's Rent Little Library", "Limehouse Community Book Exchange", "Oval tube station", "Lewisham Micro Library", "West Ealing station", "Stratford station", "Wimbledon Bookswap", "Acton Central", "Charlton station", "Cheam Station Book Club", "Enfield Chase", "Kingston station", "Northfields station", "Raynes Park waiting room", "Cannon Street", "Highgate station"]
    
    
    var body: some View {
        
        VStack{
            
            
            Form {
                           Picker("Select books on profile:", selection: $selectedTheme) {
                                                  ForEach(themes, id: \.self) {
                                                      Text($0)

                               }
                               
                               
                               

                           }
                       
                           .pickerStyle(.inline)    //styling of the picker
                           
                         
                       }
                       .scrollContentBackground(.hidden)
                       .frame(width: 300, height: 300)
            
            
            
            DatePicker( //date picker, allows user to pick the date
                "Day of NOOKSWAP:",
                selection: $date,
                displayedComponents: [.date]
            )
            
          
                          
                       
            
            Button { //Get Started Button
                print("Button pressed")
            } label: {
                NavigationLink(destination: Confirmation()){
                    Text("Confirm Swap")
                        .foregroundColor(Color.black)
                    
                        .font(.body)
                    
                        .multilineTextAlignment(.leading)
                        .frame(width: 234, height: 41)
                        .background(Color(red: 1, green: 0.92, blue: 0.80))
                        .cornerRadius(200)
                    
                    
                    
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.top, 150.0/*@END_MENU_TOKEN@*/)
                
                
            }
            
        }
    }
}
        
        
        
        
        
        struct Confirmation: View { //confirmation page which tell the user that the book swap has been confirmed.
            @State private var selectedTheme = "Dark"
            let themes = ["Dark", "Light", "Automatic"]
            
            var body: some View {
                NavigationView {
                    VStack {
                        
                        Image("tick")
                        
                        
                        
                        Text("Confirmed")
                            .font(.largeTitle)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        
                        Text("@ Wimbledon Bookswap on the 21st of October")
                            .font(.subheadline)
                            .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                        
                        
                        
                    }
                    
                }
                
            }
            
            
            
        }
        
        
        
        
        
        
        
        
        struct Swap: View { //allows user to confirm the location of the swap before heading to the next page
            
            
            //replace region value with other mk coordinates to make locations zoom in
            @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  51.509865, longitude: -0.118092), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
            
            @State var tracking:MapUserTrackingMode = .follow
            
            
            @State private var selection = ""
            let bookswaps = ["Little Free Library, Shoreditch Park", "Acton Town tube book swap", "Greenwich Station", "Little Free Library Wapping", "Gibbon's Rent Little Library", "Limehouse Community Book Exchange", "Oval tube station", "Lewisham Micro Library", "West Ealing station", "Stratford station", "Wimbledon Bookswap", "Acton Central", "Charlton station", "Cheam Station Book Club", "Enfield Chase", "Kingston station", "Northfields station", "Raynes Park waiting room", "Cannon Street", "Highgate station"]
            
            
            
            
            
            let annotations = [
                City(name: "Little Free Library, Shoreditch Park", coordinate: CLLocationCoordinate2D(latitude: 51.52987, longitude: -0.07806)), //Little Free Library, Shoreditch Park
                City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.50218, longitude: -0.28075)), //Acton Town tube book swap
                
                City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.47802, longitude: -0.0145)), //Greenwich Station
                
                City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.50798, longitude: -0.0546)), //Little Free Library Wapping
                
                City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 51.51293, longitude: -0.06048)) //Gibbon's Rent Little Library
                
                
            ]
            
            
            var body: some View {
                
                
                VStack{
                    
                    
                    
                    Map(coordinateRegion: $region, annotationItems: annotations) {
                        MapMarker(coordinate: $0.coordinate)
                        
                        
                    }
                    .frame(width: 400, height: 500)
                    .cornerRadius(50)
                    
                    
                    Text("Selected NOOKSWAP : \(selection)")
                        .font(.subheadline)
                        .padding()
                    
                    
                    Picker("Select a paint color", selection: $selection) {
                        ForEach(bookswaps, id: \.self) {
                            Text($0)
                            
                            
                            
                        }
                        
                    }
                    .pickerStyle(.menu)
                    .position(x:200,y:10)
                    
                    Button { //Get Started Button
                        print("Button pressed")
                    } label: {
                        NavigationLink(destination: confirm()){
                            Text("Confirm Location")
                                .foregroundColor(Color.black)
                            
                                .font(.body)
                            
                                .multilineTextAlignment(.leading)
                                .frame(width: 234, height: 41)
                                .background(Color(red: 1, green: 0.92, blue: 0.80))
                                .cornerRadius(200)
                            
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                    }
                    
                    
                    
                    Spacer()
                    
                    
                    
                }
                
            }
            
        }
            
                
                
                
                
                
                
                
                
                
struct Community: View { //allows user to add in their own coordinates
    
  
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:  51.509865, longitude: -0.118092), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta:1))
    
    @State var tracking:MapUserTrackingMode = .follow
    
    @State private var locations = [Location]()
    @State private var selection = ""
    
    
    var body: some View {
        
        ZStack {
            Map(coordinateRegion: $region, annotationItems: locations) { location in
                MapMarker(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) //where the map actually appears
            }
            
            
            
            .ignoresSafeArea()
            .frame(width: 400, height: 500)
            .cornerRadius(50)
            
            
            Circle()
                .fill(.blue)
                .opacity(0.3)
                .frame(width: 50, height: 50) //the circle that shows the center of the map
            
            VStack {
                
                Text("COMMUNITY SWAPS")
                    .font(.largeTitle)
                
                    .foregroundColor(Color(red: 0.10, green: 0.21, blue: 0.16))
                    .padding(.top, 50.0)
                
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        // create a new location
                        let newLocation = Location(id: UUID(), name: "New NOOKSWAP", description: "", latitude: region.center.latitude, longitude: region.center.longitude)
                        locations.append(newLocation)
                    } label: {
                        Image(systemName: "plus")
                    }
                    .padding()
                    .background(.green.opacity(0.25))
                    .foregroundColor(.white)
                    
                    .font(.title)
                    .clipShape(Circle())
                    .padding(.trailing)
                }
            }
            
            
            
            
        }
    }
    
}
                    
                    
                    
           
            
                
                
                
                
                
                
                
                
                struct Getting_Started_Previews: PreviewProvider {
                    static var previews: some View {
                        ContentView()
                        
                    }
                    
                    
                }
                
                
                struct Login_Previews: PreviewProvider {
                    static var previews: some View {
                        Login()
                        
                        
                    }
                }
                
                //struct Welcome_Previews: PreviewProvider {
                //    static var previews: some View {
                //        Welcome()
                //
                //
                //    }
                //}
                
                
                struct qr_Previews: PreviewProvider {
                    static var previews: some View {
                        qr()
                        
                        
                    }
                    
                    
                }
                
                struct BookVid_Previews: PreviewProvider {
                    static var previews: some View {
                        BookVid()
                        
                        
                    }
                    
                    
                }
                
                struct grid_Previews: PreviewProvider {
                    static var previews: some View {
                        grid()
                        
                        
                    }
                    
                    
                }
                
                
                
                //    struct Profile_Previews: PreviewProvider {
                //        static var previews: some View {
                //            Profile()
                //
                //
                //        }
                //
                //
                //    }
                struct MapView_Previews: PreviewProvider {
                    static var previews: some View {
                        MapView()
                        
                        
                    }
                    
                    
                }
                
                
                
                struct explore_Previews: PreviewProvider {
                    static var previews: some View {
                        explore()
                        
                        
                    }
                    
                    
                }
                
                
                struct explore_1_Previews: PreviewProvider {
                    static var previews: some View {
                        explore_1()
                        
                        
                    }
                    
                    
                }
                
                struct explore_2_Previews: PreviewProvider {
                    static var previews: some View {
                        explore_2()
                        
                        
                    }
                    
                    
                }
                
                struct explore_3_Previews: PreviewProvider {
                    static var previews: some View {
                        explore_3()
                        
                        
                    }
                    
                    
                }
                
                
                struct explore_4_Previews: PreviewProvider {
                    static var previews: some View {
                        explore_4()
                        
                        
                    }
                    
                    
                }
                
                
                struct confirm_Previews: PreviewProvider {
                    static var previews: some View {
                        confirm()
                        
                        
                    }
                    
                    
                }
                
                
                struct Confirmation_Previews: PreviewProvider {
                    static var previews: some View {
                        Confirmation()
                        
                        
                    }
                    
                    
                }
                
                
                struct Swap_Previews: PreviewProvider {
                    static var previews: some View {
                        Swap()
                        
                        
                    }
                    
                    
                }
                
                
                struct Community_Previews: PreviewProvider {
                    static var previews: some View {
                        Community()
                        
                        
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
            
            
        
        
    
        
        
        
        
    

    
