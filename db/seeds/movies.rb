puts "Seeding Movies"

#create movies
movies = [
  {
    name: 'Raabta',
    thumbnail_url: 'https://1847884116.rsc.cdn77.org/hindi/gallery/movies/raabta/raaabta_poster.jpg',
    description: 'Raabta is a 2017 Indian Hindi-language romantic action film directed by Dinesh Vijan'
  },
  {
    name: 'Dear Zindagi',
    thumbnail_url:'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSKF9Xsl2zawu0jCKz4VAOFylgfspKUyTigmXLhxn27_e2awXJ4',
    description:'Dear Zindagi is a 2016 Indian Hindi-language coming-of-age drama film written and directed by Gauri Shinde'
  },
  {
    name: 'Ae Dil Hai Mushkil',
    thumbnail_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSGjWobZvIqZvMK4bWOionQUNuot5r8-fhPy38z0nPCVZyVKkva',
    description: 'Ae Dil Hai Mushkil is a 2016 Indian Hindi-language musical romantic drama film directed, produced and written by Karan Johar.'
  },
  {
    name: 'Street Dancer',
    thumbnail_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRIfbSakX_Eq25Q3qBkTWuaGfEt7G1U5z1Rr6eq_crOlj7nt1mN',
    description: 'Street Dancer 3D is a 2020 Indian Hindi-language dance drama film directed by Remo DSouza'
  },
  {
    name: 'Dhadak',
    thumbnail_url:'https://www.movienewsletters.net/photos/261976R1.jpg',
    description:'Dhadak is a 2018 Indian Hindi-language romance film written and directed by Shashank Khaitan and jointly produced by Karan Johar, Hiroo Yash Johar and Apoorva Mehta under the Dharma Productions banner with Zee Studios as a sponsor producer'
  },
  {
    name: 'Dil Bechara',
    thumbnail_url:'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTAY3NEEcdyk9xbinmK_PgI0zX5otw3-xkTmvvDHSHoN1Q6MrYk',
    description:'Dil Bechara is a 2020 Indian Hindi-language coming-of-age romance film directed by Mukesh Chhabra in his directorial debut, and produced by Fox Star Studios, with dialogues and screenplay written by Shashank Khaitan and Suprotim Sengputa'
  },
  {
    name: 'Love Aaj Kal 2',
    thumbnail_url: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS1Cka8uaGHrlrVpKym2M1nLi3RWpFN4P0LnwvtSoOMNKb3TMl6',
    description: 'Love Aaj Kal (transl. Love nowadays) is a 2020 Indian Hindi-language romantic drama film directed by Imtiaz Ali and starring Kartik Aaryan and Sara Ali Khan.'
  },
  {
    name: 'Kabir Singh',
    thumbnail_url: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSSBjgn6nmJttwcTh0nmdTxJLyomVapLaColnlJZ9dXLjf-Y1tP',
    description: 'Kabir Singh is a 2019 Indian Hindi-language romantic drama film written and directed by Sandeep Reddy Vanga and jointly produced by Bhushan Kumar'
  },
  {
    name: 'Andhadhun',
    thumbnail_url: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT-PKn3ieG8r0-z_5YKGpIiWXBbIrRHwxxkzWQwfVumxi7TGNn4',
    description: 'Andhadhun (transl. Blindly) is a 2018 Indian Hindi-language black comedy crime thriller film co-written and directed by Sriram Raghavan, produced by Matchbox Pictures, and distributed by Viacom18 Motion Pictures'
  }
]

movies.each do |movie|
  Movie.find_or_create_by!(name: movie[:name], thumbnail_url: movie[:thumbnail_url], description: movie[:description])
end
