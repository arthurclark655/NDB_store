// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.9.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}


struct Wallet {
    uint256 free;
    uint256 hold;
}

struct IndexWallet {
    uint keyIndex;
    Wallet wallet;
}

struct KeyFlag {
    bytes key;
    bool deleted;
}

struct User {
    string id;
    string email;
    string name;
    KeyFlag[] keys;
    uint size;
    mapping(bytes => IndexWallet) data;
}

library IterableMapping {
    function insert(User storage self, bytes memory key) internal returns (bool replaced) {
        uint keyIndex = self.data[key].keyIndex;
        if (keyIndex > 0)
            return true;
        else {
            keyIndex = self.keys.length;
            self.keys.push();
            self.data[key].keyIndex = keyIndex + 1;
            self.keys[keyIndex].key = key;
            self.size++;
            return false;
        }
    }

    function remove(User storage self, bytes memory key) 
        internal 
        returns (bool success) 
    {
        uint keyIndex = self.data[key].keyIndex;
        if (keyIndex == 0)
            return false;
        delete self.data[key];
        self.keys[keyIndex - 1].deleted = true;
        self.size --;
    }

    function contains(User storage self, bytes memory key) internal view returns (bool) {
        return self.data[key].keyIndex > 0;
    }
// checked
    function iterate_start(User storage self) internal view returns (uint keyIndex) {
        keyIndex = 0;
        while (keyIndex < self.keys.length && self.keys[keyIndex].deleted)
            keyIndex++;
        return keyIndex;
    }
// checked
    function iterate_valid(User storage self, uint keyIndex) internal view returns (bool) {
        return keyIndex < self.keys.length;
    }
// checked
    function iterate_next(User storage self, uint keyIndex) internal view returns (uint r_keyIndex) {
        keyIndex++;
        while (keyIndex < self.keys.length && self.keys[keyIndex].deleted)
            keyIndex++;
        return keyIndex;
    }

// checked
    function iterate_get(User storage self, uint keyIndex) 
        internal 
        view 
        returns (bytes memory key, Wallet memory value) 
    {
        key = self.keys[keyIndex].key;
        value = self.data[key].wallet;
    }
}

interface IBEP20 {
    function totalSupply() external view returns (uint256);
    function decimals() external view returns (uint8);
    function symbol() external view returns (string memory);
    function name() external view returns (string memory);
    function getOwner() external view returns (address);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address _owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

interface IERC20 {
    function totalSupply() external view returns (uint);
    function balanceOf(address account) external view returns (uint);
    function transfer(address recipient, uint amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint);
    function approve(address spender, uint amount) external returns (bool);
    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);
}

contract UserWallet is Ownable {

    string[] Cryptos;

    mapping(bytes => User) users;

    using SafeMath for uint256;
    using IterableMapping for User;

    // Emit new user
    event newUserCreated(string id);

    // Emit free amount is added
    event freeAmountAdded(string id, uint amount);

    // Emit hold amount is added
    event holdAmountAdded(string id, uint amount);

    // Emit Release Hold
    event releasedHold(string id, uint amount);

    // Emit Made Hold
    event madeHold(string id, uint amount);

    // Emit Pay Free
    event paidFree(string id, uint amount);

    // For withdrawal 
    // IERC20 BTCCoin;
    // IERC20 ETHCoin;
    // IBEP20 DOGECoin;
    // IERC20 LTCCoin;
    // IERC20 BCHCoin;
    // IERC20 DAICoin;
    // IERC20 USDCoin;

    // only Owner
    // modifier onlyOperator() {
    //     require(msg.sender == owner(), "Owner can only call this function.");
    //     _;
    // }

    constructor () {
        
    }

    // Utils
    function getCoinList() 
        public 
        view 
        returns (string[] memory cryptos) 
    {
        return Cryptos;
    }

    // Main Fuctions
    function addNewUser(string memory id, string memory email, string memory name) 
        public 
        onlyOwner 
        returns (string memory result)
    {
        bytes memory _id = bytes(id);
        User storage user = users[_id];
        user.id = id;
        user.email = email;
        user.name = name;
        user.size = 0;
        emit newUserCreated(id);
        return "Success";
    }

    function addFreeAmount(string memory id, string memory crypto, uint amount)
        public 
        onlyOwner
        returns (bool result)
    {
        bytes memory _id = bytes(id);
        bytes memory _crypto = bytes(crypto);
        User storage user = users[_id];
        bool replaced = user.insert(_crypto);
        user.data[_crypto].wallet.free += amount;
        emit freeAmountAdded(id, amount);
        return replaced;
    }

    function addHoldAmount(string memory id, string memory crypto, uint amount) 
        public 
        onlyOwner
        returns (bool result)
    {
        bytes memory _id = bytes(id);
        bytes memory _crypto = bytes(crypto);
        User storage user = users[_id];
        bool replaced = user.insert(_crypto);
        user.data[_crypto].wallet.hold += amount;
        emit holdAmountAdded(id, amount);
        return replaced;
    }

    function releaseHold(string memory id, string memory crypto, uint amount) 
        public 
        onlyOwner
        returns (bool result)
    {
        bytes memory _id = bytes(id);
        bytes memory _crypto = bytes(crypto);
        User storage user = users[_id];
        // check enough funds
        uint256 hold = user.data[_crypto].wallet.hold;
        (bool enough, uint256 sub) = hold.trySub(amount);
        
        require(enough, "Hold amount is not enough.");
        
        user.data[_crypto].wallet.hold = sub;
        user.data[_crypto].wallet.free += amount;
        emit releasedHold(id, amount);
        return true;
    }

    function makeHold(string memory id, string memory crypto, uint amount)
        public 
        onlyOwner
        returns (bool result)
    {
        bytes memory _id = bytes(id);
        bytes memory _crypto = bytes(crypto);
        User storage user = users[_id];
        // check enough funds
        uint256 free = user.data[_crypto].wallet.free;
        (bool enough, uint256 sub) = free.trySub(amount);
        
        require(enough, "Free amount is not enough.");
        
        user.data[_crypto].wallet.hold += amount;
        user.data[_crypto].wallet.free = sub;
        emit holdAmountAdded(id, amount);
        return true;
    }

    function payFree(string memory id, string memory crypto, uint amount)
        public
        onlyOwner
        returns(bool result)
    {
        bytes memory _id = bytes(id);
        bytes memory _crypto = bytes(crypto);
        User storage user = users[_id];
        // check enough founds
        uint256 free = user.data[_crypto].wallet.free;
        (bool enough, uint256 sub) = free.trySub(amount);
        require(enough, "Free amount is not enough.");

        user.data[_crypto].wallet.free = sub;
        emit paidFree(id, amount);
        return true;
    }

    function getUserName(string memory id)
        public
        view
        onlyOwner
        returns (string memory name)
    {
        bytes memory _id = bytes(id);
        return users[_id].name;
    }

    function getWalletSize(string memory id) 
        public
        view 
        onlyOwner
        returns (uint size)
    {
        bytes memory _id = bytes(id);
        return users[_id].size;
    }

    function getWalletById(string memory id, string memory crypto)
        public 
        view
        onlyOwner
        returns (uint free, uint hold)
    {
        bytes memory _id = bytes(id);
        bytes memory _crypto = bytes(crypto);
        Wallet memory wallet = users[_id].data[_crypto].wallet;
        return (wallet.free, wallet.hold);
    }

    function getWallets(string memory id) 
        public 
        view
        onlyOwner
        returns (string[] memory keyList, uint[] memory freeList, uint[] memory holdList)
    {
        bytes memory _id = bytes(id);
        User storage _user = users[_id];
        
        uint[] memory frees = new uint[](_user.size);
        uint[] memory holds = new uint[](_user.size);
        string[] memory keys = new string[](_user.size);
        uint i = 0;
        for (
            uint index = _user.iterate_start();
            _user.iterate_valid(index); 
            index = _user.iterate_next(index)) 
        {
            (bytes memory key, Wallet memory wallet) = _user.iterate_get(index);
            keys[i] = string(key);
            frees[i] = wallet.free;
            holds[i] = wallet.hold;
            i++;
        }
        return (keys, frees, holds);
    }

}