readability = require("../lib/index")
should = require("should")
path = require("path")
fs = require("fs")

describe "grab article test", ()->
    it "case 1", (done)->
        sample1Path = path.join(__dirname, "/samples/1.html")
        fs.readFile sample1Path, (err, data)->
            should(err).be.empty
            readability.parse data.toString(), (err, article)->
                should(err).be.empty
                article.text.should.not.be.empty
                done()
    it "case 2", (done)->
        sample2Path = path.join(__dirname, "/samples/2.html")
        fs.readFile sample2Path, (err, data)->
            should(err).be.empty
            readability.parse data.toString(), (err, article)->
                should(err).be.empty
                article.text.should.not.be.empty
                done()
    it "case 3", (done)->
        sample3Path = path.join(__dirname, "/samples/3.html")
        fs.readFile sample3Path, (err, data)->
            should(err).be.empty
            readability.parse data.toString(), (err, article)->
                should(err).be.empty
                article.text.should.not.be.empty
                done()
    it "url test", (done)->
        readability.parse "http://www.mockplus.cn/blog/post/5", (err, article)->
            should(err).be.empty
            article.text.should.not.be.empty
            done()
