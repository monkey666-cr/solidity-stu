;(async () => {
    const address = '0xA4ca90E5692639a9A9B9579A797211dCbDbC6AB7'
    const abiArray = [
        {
            inputs: [
                {
                    internalType: 'uint256',
                    name: 'newUint',
                    type: 'uint256',
                },
            ],
            name: 'setMyUint',
            outputs: [],
            stateMutability: 'nonpayable',
            type: 'function',
        },
        {
            inputs: [],
            name: 'myUint',
            outputs: [
                {
                    internalType: 'uint256',
                    name: '',
                    type: 'uint256',
                },
            ],
            stateMutability: 'view',
            type: 'function',
        },
    ]

    const contractInstance = new web3.eth.Contract(abiArray, address)

    console.log(await contractInstance.methods.myUint().call())

    let accounts = await web3.eth.getAccounts();
    let txResult = await contractInstance.methods.setMyUint(345).send({from: accounts[0]})
    
    console.log(await contractInstance.methods.myUint().call())
    console.log(txResult)
})()
