//
//  character.swift
//  disney world
//
//  Created by Abby on 2022/10/20.
//

import SwiftUI

struct character: View {
    let char:characterdata
    var body: some View {
            VStack{
                Image(char.pic)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width:300)
                Text(char.name)
                    .font(.custom("Travel October", size: 40))
                    .foregroundColor(.brown)
                
                HStack (alignment: .firstTextBaseline){
                    Image(systemName: "birthday.cake.fill")
                        .foregroundColor(.brown)
                    Text(char.birthday)
                        .font(.custom("Travel October", size: 30))
                        .foregroundColor(.brown)
                    .padding(.bottom)
                }
            }
    }
}

struct character_Previews: PreviewProvider {
    static var previews: some View {
        character(char: .demoC)
    }
}
