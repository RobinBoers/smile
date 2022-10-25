let joypixels = require("emoji-toolkit");
let fs = require("fs");

const emojiList = require("emojis-list");

const emojis = emojiList.map((emoji) => {
  let shortname = joypixels.toShort(emoji).replace(/:/g, "");
  return `${emoji} ${shortname}`;
});

fs.writeFileSync("lib/emojis.txt", stringify(emojis));

function stringify(array) {
  return array.toString().split(",").join("\n");
}
