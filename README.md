## Itunes backup for iOS developer
Simple Ruby script to backup metadata on itunesconnect to local json file

## How to use
- Install [fastlane](https://github.com/fastlane/fastlane)
- Run
```bash
fastlane init # set up your ios developer account
```
- Run
```ruby
ruby Backup.rb your_itunes_account@domain.com
```

### Sample data
```json
{
  "keywords": {
    "es-ES": "clasico,bounce,doodle,board,flow,match,five,sense,row,1990,1998,mission,hero,brain,train,fun,fit,98",
    "ja": "line 98,lines 98,line classic,game of lines,ライン,20xx,ball,classic,stop,jump,bubble,aero,jelly,air",
    "en-US": "lines 98,98,line 98,classic,zen,crystal,deluxe,pro,legend,standard,origin,hd,king,link,bubble,real",
    "vi": "game line 98,line 98,game line,cuc hay,tro choi line,game 98,tri tue,lines 98,tinh diem,window"
  },
  "description": {
    "es-ES": "Game of Lines es un juego también conocido bajo el nombre de líneas clásicas 98 o líneas de color\nSe eliminan las líneas de 5 o más bolas del mismo color, añadiendo a la partitura.",
    "ja": "ラインのゲームはクラシック・ライン９８や色のラインとして知られています。\n\n遊び方\n異なる７色で選ばれる３個の玉がある９x９の板から始まります。一度で１個の玉をどこかのところへ、道があれば（連接の横幅や縦幅の空白セル）、移すことができます。目標は５個以上の玉のライン（横、縦、斜め）を消すことです。そのようなラインの玉ができたら、玉が消えて、また別の玉を移せます。ラインができなかったら、新しい３個の玉が加えられて、板がいっぱくなるまでゲームが続けます。",
    "en-US": "Game of Lines is a game also known under name classic lines 98 or color lines\nLines of 5 or more balls of the same color are eliminated, adding to the score.",
    "vi": "Game of Lines là một trong những trò chơi cực hay và hấp dẫn thuộc thể loại game trí tuệ chơi mãi không chán rất phù hợp với dân văn phòng."
  },
  "promotional_text": {
    "es-ES": "Un maravilloso juego. Divertido y fácil de jugar",
    "ja": "すばらしい試合。 楽しく簡単に遊べる",
    "en-US": "A wonderful game. Fun and easy to play",
    "vi": "Game Line 98 Kinh Điển - Line 98 hay nhất mọi thời đại"
  },
  "name": {
    "es-ES": "Game of Lines - Color Ball",
    "ja": "Game of Lines",
    "en-US": "Game of Lines - Color Ball",
    "vi": "Game of Lines - Color Ball"
  },
  "subtitle": {
    "es-ES": null,
    "ja": null,
    "en-US": "Wonderful retro classic game",
    "vi": "Game Line 98 Kinh Điển"
  }
}
```
## Todo
- [ ] Download screenshot and app icon

## Contribute
Feel free to open a pull request
