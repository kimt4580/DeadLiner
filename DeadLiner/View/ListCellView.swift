//
//  ListCellView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct ListCellView: View {
  var body: some View {
    Button {
    
    } label: {
      HStack(alignment: .center) {
        Image(systemName: "square.and.arrow.up.circle.fill")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .clipShape(Circle())
          .frame(width: 60)
          .padding()
        
        VStack(alignment: .leading) {
          Text("Title")
          Text("2023-05-02 12:00:00")
            .lineLimit(1)
          Text("description")
            .font(.system(size: 12))
          
        }
        .padding()
        Image(systemName: "chevron.right")
          .frame(alignment: .trailing)
          .padding()
        
      }
      //.frame(maxWidth: .infinity, alignment: .leading)
    }
    .foregroundColor(Color.black)
    .background(Color.clear)
    .swipeActions {
      Button {
        print("good")
      } label: {
        Image(systemName: "trash")
      }
      .tint(.red)
    }
  }
}

struct ListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellView()
    }
}
