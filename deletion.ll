{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyNEXH+vH54fVLpAn2sOQcNU",
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
      "source": [
        "class Node:\n",
        "    def __init__(self, data):\n",
        "        self.data = data\n",
        "        self.next = None\n",
        "\n",
        "class LinkedList:\n",
        "    def __init__(self):\n",
        "        self.head = None\n",
        "\n",
        "    def printList(self):\n",
        "        temp = self.head\n",
        "        while (temp):\n",
        "            print(temp.data)\n",
        "            temp = temp.next\n",
        "\n",
        "if __name__ == '__main__':\n",
        "    llist = LinkedList()\n",
        "    llist.head = Node(1)\n",
        "    second = Node(2)\n",
        "    third = Node(3)\n",
        "\n",
        "    llist.head.next = second\n",
        "    second.next = third\n",
        "\n",
        "    llist.printList()"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "GeIiHF43gp3Y",
        "outputId": "a5c97696-5b89-421c-cd4d-c3ea0e5074a9"
      },
      "execution_count": 6,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "1\n",
            "2\n",
            "3\n"
          ]
        }
      ]
    }
  ]
}