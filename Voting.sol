pragma solidity ^0.4.18;
contract Voting {

    Vote[] public votes;

    struct Vote {
      address creator_address;
      string question;
    }

    function newVote(string _question) external{
        Vote memory vote = Vote(msg.sender, _question);
        votes.push(vote);
    }
}
