{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyMduGp50XHMv3gmZDpCptBL",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/arshiarb24/ds-lab/blob/main/deletion.ll\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": 2,
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "mxoHqFUkdrdi",
        "outputId": "3ad0f34b-156a-4c42-a846-9fe7a0a3e867"
      },
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Thu\n",
            "Wed\n",
            "Mon\n"
          ]
        }
      ],
      "source": [
        "class Node:\n",
        "    def __init__(self, data=None):\n",
        "        self.data = data\n",
        "        self.next = None\n",
        "\n",
        "class SLinkedList:\n",
        "    def __init__(self):\n",
        "        self.head = None\n",
        "\n",
        "    def Atbegining(self, data_in):\n",
        "        NewNode = Node(data_in)\n",
        "        NewNode.next = self.head\n",
        "        self.head = NewNode\n",
        "\n",
        "    def RemoveNode(self, Removekey):\n",
        "        HeadVal = self.head\n",
        "\n",
        "        # Store head node\n",
        "        # If head node itself holds the key to be deleted\n",
        "        if HeadVal is not None:\n",
        "            if HeadVal.data == Removekey:\n",
        "                self.head = HeadVal.next\n",
        "                return\n",
        "\n",
        "        # Search for the key to be deleted, keep track of the\n",
        "        # previous node as we need to change 'prev.next'\n",
        "        prev = None\n",
        "        while HeadVal is not None:\n",
        "            if HeadVal.data == Removekey:\n",
        "                break\n",
        "            prev = HeadVal\n",
        "            HeadVal = HeadVal.next\n",
        "\n",
        "        # If key was not present in linked list\n",
        "        if HeadVal == None:\n",
        "            return\n",
        "\n",
        "        # Unlink the node from linked list\n",
        "        if prev is not None: # Ensure prev exists before trying to access its next attribute\n",
        "            prev.next = HeadVal.next\n",
        "\n",
        "    def LListprint(self):\n",
        "        printval = self.head\n",
        "        while (printval):\n",
        "            print(printval.data)\n",
        "            printval = printval.next\n",
        "\n",
        "llist = SLinkedList()\n",
        "llist.Atbegining(\"Mon\")\n",
        "llist.Atbegining(\"Tue\")\n",
        "llist.Atbegining(\"Wed\")\n",
        "llist.Atbegining(\"Thu\")\n",
        "llist.RemoveNode(\"Tue\")\n",
        "llist.LListprint()"
      ]
    }
  ]
}