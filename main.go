package main
//author deyun.shen 

func main() {
	//创建一个区块链
	//初始创建区块
	bc := NewBlockchain()
	defer bc.db.Close()

	cli := CLI{bc}
	cli.Run()
}
